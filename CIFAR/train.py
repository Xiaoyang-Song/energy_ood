# -*- coding: utf-8 -*-
import numpy as np
import os
import pickle
import argparse
import time
import torch
import torch.nn as nn
import torch.backends.cudnn as cudnn
import torchvision.transforms as trn
import torchvision.datasets as dset
import torch.nn.functional as F
from tqdm import tqdm
from models.wrn import WideResNet
from models.densenet import *
from dataset import *
from icecream import ic

if __package__ is None:
    import sys
    from os import path

    sys.path.append(path.dirname(path.dirname(path.abspath(__file__))))
    from utils.tinyimages_80mn_loader import TinyImages
    from utils.validation_dataset import validation_split

parser = argparse.ArgumentParser(description='Tunes a CIFAR Classifier with OE',
                                 formatter_class=argparse.ArgumentDefaultsHelpFormatter)
parser.add_argument('--dataset', type=str,
                    help='Choose between CIFAR-10, CIFAR-100.')
parser.add_argument('--model', '-m', type=str, default='densenet',
                    choices=['allconv', 'wrn', 'densenet'], help='Choose architecture.')
parser.add_argument('--calibration', '-c', action='store_true',
                    help='Train a model to be used for calibration. This holds out some data for validation.')
# Optimization options
parser.add_argument('--epochs', '-e', type=int, default=10,
                    help='Number of epochs to train.')
parser.add_argument('--learning_rate', '-lr', type=float,
                    default=0.001, help='The initial learning rate.')
parser.add_argument('--batch_size', '-b', type=int,
                    default=128, help='Batch size.')
parser.add_argument('--oe_batch_size', type=int,
                    default=256, help='Batch size.')
parser.add_argument('--test_bs', type=int, default=200)
parser.add_argument('--momentum', type=float, default=0.9, help='Momentum.')
parser.add_argument('--decay', '-d', type=float,
                    default=0.0005, help='Weight decay (L2 penalty).')


# WRN Architecture
parser.add_argument('--layers', default=40, type=int,
                    help='total number of layers')
parser.add_argument('--widen-factor', default=2, type=int, help='widen factor')
parser.add_argument('--droprate', default=0.3, type=float,
                    help='dropout probability')


# Checkpoints
parser.add_argument('--save', '-s', type=str,
                    default='./snapshots/', help='Folder to save checkpoints.')
parser.add_argument('--load', '-l', type=str, default='./snapshots/pretrained',
                    help='Checkpoint path to resume / test.')
parser.add_argument('--test', '-t', action='store_true',
                    help='Test only flag.')
# Acceleration
parser.add_argument('--ngpu', type=int, default=1, help='0 = CPU.')
parser.add_argument('--prefetch', type=int, default=1,
                    help='Pre-fetching threads.')


# EG specific
parser.add_argument('--m_in', type=float, default=-25.,
                    help='margin for in-distribution; above this value will be penalized')
parser.add_argument('--m_out', type=float, default=-7.,
                    help='margin for out-distribution; below this value will be penalized')
parser.add_argument('--score', type=str, default='OE', help='OE|energy')
parser.add_argument('--seed', type=int, default=1,
                    help='seed for np(tinyimages80M sampling); 1|2|8|100|107')

parser.add_argument('--regime', type=str, default='Balanced', help='Regime')
parser.add_argument('--n_ood', type=int, default=32,
                    help='Number of OoD samples')

args = parser.parse_args()


if args.score == 'OE':
    save_info = 'oe_tune'
elif args.score == 'energy':
    save_info = 'energy_ft'

args.save = args.save+save_info
if os.path.isdir(args.save) == False:
    os.mkdir(args.save)
state = {k: v for k, v in args._get_kwargs()}
print(state)

torch.manual_seed(1)
np.random.seed(args.seed)

if args.dataset == 'CIFAR10-SVHN':
    data = DSET(args.dataset, False, 128, 128, None, None)
    train_data_in, test_data = data.ind_train, data.ind_val
    num_classes = 10
    num_channels = 3
    ood_data = 'CIFAR10-SVHN'

elif args.dataset == 'MNIST-FashionMNIST':
    data = DSET(args.dataset, False, 128, 128, None, None)
    train_data_in, test_data = data.ind_train, data.ind_val
    num_classes = 10
    num_channels = 1
    ood_data = 'MNIST-FashionMNIST'

elif args.dataset in ['SVHN', 'SVHN-R2', 'FashionMNIST', 'FashionMNIST-R2']:
    data = DSET(args.dataset, True, 128, 128, [0, 1, 2, 3, 4, 5, 6, 7], [8, 9])
    train_data_in, test_data = data.ind_train, data.ind_val
    num_classes = 8

    if args.dataset == 'SVHN' or args.dataset == 'SVHN-R2':
        num_channels = 3
        ood_data = 'SVHN'
    else:
        num_channels = 1
        ood_data = 'FashionMNIST'

elif args.dataset == 'MNIST':
    data = DSET(args.dataset, True, 128, 128, [0, 1, 2, 3, 4, 5, 6, 7], [8, 9])
    train_data_in, test_data = data.ind_train, data.ind_val
    num_channels = 1
    num_classes = 8
    ood_data = 'MNIST'

else:
    assert False


calib_indicator = ''
if args.calibration:
    train_data_in, val_data = validation_split(train_data_in, val_share=0.1)
    calib_indicator = '_calib'


# ood_data = TinyImages(transform=trn.Compose(
#     [trn.ToTensor(), trn.ToPILImage(), trn.RandomCrop(32, padding=4),
#      trn.RandomHorizontalFlip(), trn.ToTensor(), trn.Normalize(mean, std)]))

# Fetch OoD data from existing repository
fname = f"/scratch/sunwbgt_root/sunwbgt98/xysong/Out-of-Distribution-GANs/checkpoint/OOD-Sample/{ood_data}/OOD-{args.regime}-{args.n_ood}.pt"
ood_data, ood_label = torch.load(fname)
print(ood_data.shape)
print(Counter(np.array(ood_label)))

ood_data = torch.utils.data.TensorDataset(ood_data, ood_label)

# ood_data = list(zip(ood_data, ood_label))

train_loader_in = torch.utils.data.DataLoader(
    train_data_in,
    batch_size=args.batch_size, shuffle=True,
    num_workers=args.prefetch, pin_memory=True)

train_loader_out = torch.utils.data.DataLoader(
    ood_data,
    batch_size=args.oe_batch_size, shuffle=False,
    num_workers=args.prefetch, pin_memory=True)

test_loader = torch.utils.data.DataLoader(
    test_data,
    batch_size=args.batch_size, shuffle=False,
    num_workers=args.prefetch, pin_memory=True)
DEVICE = torch.device("cuda" if torch.cuda.is_available() else "cpu")
print(torch.cuda.get_device_name(0))


def test_backbone_D_V1(model, val_loader):
    with torch.no_grad():
        criterion = nn.CrossEntropyLoss()
        val_loss, val_acc, total_acc = [], [], []
        for idx, (img, label) in enumerate(tqdm(val_loader)):
            img, label = img.to(DEVICE), label.to(DEVICE)
            logits = model(img)
            loss = criterion(logits, label)
            num_correct, num_total = (torch.argmax(logits, dim=1) ==
                                      label).sum().item(), label.shape[0]
            acc = num_correct / num_total
            # print(acc)
            val_acc.append(acc)
            total_acc.append([num_correct, num_total])
            val_loss.append(loss.detach().item())
        print(np.mean(val_acc))
        print(np.mean(val_loss))
        total_acc = np.array(total_acc)
        print(np.sum(total_acc[:, 0] / np.sum(total_acc[:, 1])))


# Create model
net = DenseNet3(100, num_classes, 12, reduction=0.5,
                bottleneck=True, dropRate=0.0, input_channel=num_channels).to(DEVICE)
# print('Model Restored!')


def recursion_change_bn(module):
    if isinstance(module, torch.nn.BatchNorm2d):
        module.track_running_stats = 1
        module.num_batches_tracked = 0
    else:
        for i, (name, module1) in enumerate(module._modules.items()):
            module1 = recursion_change_bn(module1)
    return module


# Restore model
model_name = os.path.join(
    args.load, f'[{args.dataset}]-pretrained-classifier' + '.pt')
if os.path.isfile(model_name):
    net.load_state_dict(torch.load(model_name))
    print('Model restored!')

with torch.no_grad():
    # Evaluation
    # torch.save(model.state_dict(),
    #            log_dir + f'[{data.name}]-pretrained-classifier.pt')
    # ic("Model Checkpoint Saved!")
    test_backbone_D_V1(net, data.ind_val_loader)

if args.ngpu > 1:
    net = torch.nn.DataParallel(net, device_ids=list(range(args.ngpu)))

if args.ngpu > 0:
    net.cuda()
    torch.cuda.manual_seed(1)

cudnn.benchmark = True  # fire on all cylinders

optimizer = torch.optim.SGD(
    net.parameters(), state['learning_rate'], momentum=state['momentum'],
    weight_decay=state['decay'], nesterov=True)


def cosine_annealing(step, total_steps, lr_max, lr_min):
    return lr_min + (lr_max - lr_min) * 0.5 * (
        1 + np.cos(step / total_steps * np.pi))


scheduler = torch.optim.lr_scheduler.LambdaLR(
    optimizer,
    lr_lambda=lambda step: cosine_annealing(
        step,
        args.epochs * len(train_loader_in),
        1,  # since lr_lambda computes multiplicative factor
        1e-6 / args.learning_rate))


# /////////////// Training ///////////////

def train():
    net.train()  # enter train mode
    loss_avg = 0.0

    # start at a random point of the outlier dataset; this induces more randomness without obliterating locality
    train_loader_out.dataset.offset = np.random.randint(
        len(train_loader_out.dataset))
    for in_set, out_set in zip(train_loader_in, train_loader_out):
        data = torch.cat((in_set[0], out_set[0]), 0)
        target = in_set[1]

        data, target = data.cuda(), target.cuda()

        # forward
        x = net(data)

        # backward
        scheduler.step()
        optimizer.zero_grad()

        loss = F.cross_entropy(x[:len(in_set[0])], target)
        # cross-entropy from softmax distribution to uniform distribution
        if args.score == 'energy':
            Ec_out = -torch.logsumexp(x[len(in_set[0]):], dim=1)
            Ec_in = -torch.logsumexp(x[:len(in_set[0])], dim=1)
            loss += 0.1*(torch.pow(F.relu(Ec_in-args.m_in), 2).mean() +
                         torch.pow(F.relu(args.m_out-Ec_out), 2).mean())
        elif args.score == 'OE':
            loss += 0.5 * -(x[len(in_set[0]):].mean(1) -
                            torch.logsumexp(x[len(in_set[0]):], dim=1)).mean()

        loss.backward()
        optimizer.step()

        # exponential moving average
        loss_avg = loss_avg * 0.8 + float(loss) * 0.2
    state['train_loss'] = loss_avg


# test function
def test():
    net.eval()
    loss_avg = 0.0
    correct = 0
    with torch.no_grad():
        for data, target in test_loader:
            data, target = data.cuda(), target.cuda()

            # forward
            output = net(data)
            loss = F.cross_entropy(output, target)

            # accuracy
            pred = output.data.max(1)[1]
            correct += pred.eq(target.data).sum().item()

            # test loss average
            loss_avg += float(loss.data)

    state['test_loss'] = loss_avg / len(test_loader)
    state['test_accuracy'] = correct / len(test_loader.dataset)


if args.test:
    test()
    print(state)
    exit()

# Make save directory
if not os.path.exists(args.save):
    os.makedirs(args.save)
if not os.path.isdir(args.save):
    raise Exception('%s is not a dir' % args.save)

with open(os.path.join(args.save, args.dataset + '_' + args.regime + '_' + str(args.n_ood) + calib_indicator + '_' + args.model + '_s' + str(args.seed) +
                       '_' + save_info+'_training_results.csv'), 'w') as f:
    f.write('epoch,time(s),train_loss,test_loss,test_error(%)\n')

print('Beginning Training\n')

# Main loop
for epoch in range(0, args.epochs):
    state['epoch'] = epoch

    begin_epoch = time.time()

    train()
    test()

    # Save model
    torch.save(net.state_dict(),
               os.path.join(args.save, args.dataset + '_' + args.regime + '_' + str(args.n_ood) + calib_indicator + '_' + args.model + '_s' + str(args.seed) +
                            '_' + save_info + '_epoch_' + str(epoch) + '.pt'))

    # Let us not waste space and delete the previous model
    prev_path = os.path.join(args.save, args.dataset + '_' + args.regime + '_' + str(args.n_ood) + calib_indicator + '_' + args.model + '_s' + str(args.seed) +
                             '_' + save_info + '_epoch_' + str(epoch - 1) + '.pt')
    if os.path.exists(prev_path):
        os.remove(prev_path)

    # Show results
    with open(os.path.join(args.save, args.dataset + '_' + args.regime + '_' + str(args.n_ood) + calib_indicator + '_' + args.model + '_s' + str(args.seed) +
                           '_' + save_info + '_training_results.csv'), 'a') as f:
        f.write('%03d,%05d,%0.6f,%0.5f,%0.2f\n' % (
            (epoch + 1),
            time.time() - begin_epoch,
            state['train_loss'],
            state['test_loss'],
            100 - 100. * state['test_accuracy'],
        ))

    # # print state with rounded decimals
    # print({k: round(v, 4) if isinstance(v, float) else v for k, v in state.items()})

    print('Epoch {0:3d} | Time {1:5d} | Train Loss {2:.4f} | Test Loss {3:.3f} | Test Error {4:.2f}'.format(
        (epoch + 1),
        int(time.time() - begin_epoch),
        state['train_loss'],
        state['test_loss'],
        100 - 100. * state['test_accuracy'])
    )

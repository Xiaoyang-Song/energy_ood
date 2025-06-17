from models.densenet import *
from dataset import *
from tqdm import tqdm
import os
import argparse
import time
import yaml

DEVICE = torch.device("cuda" if torch.cuda.is_available() else "cpu")
print(torch.cuda.get_device_name(0))


parser = argparse.ArgumentParser(description='Classifier Training Scripts',
                                 formatter_class=argparse.ArgumentDefaultsHelpFormatter)
# Setup
parser.add_argument('--dataset', type=str, default='CIFAR10-SVHN')
parser.add_argument('--max_epochs', type=int, default=300)
parser.add_argument('--lr', type=float, default=0.1)

parser.add_argument('--opt', type=str, default='sgd')


args = parser.parse_args()
print(args)


def adjust_opt(optAlg, optimizer, epoch, max_epoch):
    if optAlg == 'sgd':
        if epoch < max_epoch * 0.5:
            lr = 1e-1
        elif epoch == max_epoch * 0.5:
            lr = 1e-2
        elif epoch == max_epoch * 0.75:
            lr = 1e-3
        else:
            return

        for param_group in optimizer.param_groups:
            param_group['lr'] = lr


def test_backbone_D(model, val_loader):
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


log_dir = "./snapshots/pretrained/"
os.makedirs(log_dir, exist_ok=True)


if args.dataset == 'CIFAR10-SVHN':
    data = DSET(args.dataset, False, 64, 128, None, None)
    train_data, test_data = data.ind_train, data.ind_val
    num_classes = 10
    num_channels = 3

elif args.dataset == 'MNIST-FashionMNIST':
    data = DSET(args.dataset, False, 128, 128, None, None)
    train_data, test_data = data.ind_train, data.ind_val
    num_classes = 10
    num_channels = 1

elif args.dataset == 'SVHN' or args.dataset == 'FashionMNIST':
    data = DSET(args.dataset, True, 128, 128, [0, 1, 2, 3, 4, 5, 6, 7], [8, 9])
    train_data, test_data = data.ind_train, data.ind_val
    num_classes = 8

    if args.dataset == 'SVHN':
        num_channels = 3
    else:
        num_channels = 1

elif args.dataset == 'MNIST':
    data = DSET(args.dataset, True, 128, 128, [0, 1, 2, 3, 4, 5, 6, 7], [8, 9])
    train_data, test_data = data.ind_train, data.ind_val
    num_channels = 1
    num_classes = 8
else:
    assert False


# CIFAR10 pre training
model = DenseNet3(depth=100, num_classes=num_classes,
                  input_channel=num_channels).to(DEVICE)
lr = 1e-1

if args.opt == 'adam':
    optimizer = torch.optim.Adam(
        model.parameters(), lr=lr, betas=(0.9, 0.999), weight_decay=1e-4)
elif args.opt == 'sgd':
    optimizer = torch.optim.SGD(model.parameters(), lr=1e-1,
                                momentum=0.9, weight_decay=1e-4)

with torch.no_grad():
    # Evaluation
    torch.save(model.state_dict(),
               log_dir + f'[{data.name}]-pretrained-classifier.pt')
    ic("Model Checkpoint Saved!")
    test_backbone_D(model, data.ind_val_loader)

ind_tri_loader = data.ind_train_loader
ind_val_loader = data.ind_val_loader
max_epoch = args.max_epochs


criterion = nn.CrossEntropyLoss()
# Simple training loop
iter_count_train = 0
iter_count_val = 0
for epoch in tqdm(range(max_epoch)):
    if args.opt == 'sgd':
        adjust_opt('sgd', optimizer, epoch, max_epoch)

    # Training
    model.train()
    train_loss, train_acc, wass = [], [], []
    for idx, (img, labels) in enumerate(ind_tri_loader):
        img = img.to(DEVICE)
        labels = labels.to(DEVICE)
        optimizer.zero_grad()
        logits = model(img)
        loss = criterion(logits, labels)
        loss.backward()
        # ic(loss)
        optimizer.step()
        # Append training statistics
        acc = (torch.argmax(logits, dim=1) ==
               labels).sum().item() / labels.shape[0]
        train_acc.append(acc)
        train_loss.append(loss.detach().item())
        iter_count_train += 1

    print(f"\nEpoch  # {epoch + 1} | training loss: {np.mean(train_loss)} \
            | training acc: {np.mean(train_acc)}")
    # Evaluation
    # scheduler.step()
    model.eval()
    with torch.no_grad():
        val_loss, val_acc = [], []
        for idx, (img, labels) in enumerate(ind_val_loader):
            img, labels = img.to(DEVICE), labels.to(DEVICE)
            logits = model(img)
            loss = criterion(logits, labels)
            acc = (torch.argmax(logits, dim=1) ==
                   labels).sum().item() / labels.shape[0]
            val_acc.append(acc)
            val_loss.append(loss.detach().item())
            iter_count_val += 1

        print(f"Epoch  # {epoch + 1} | validation loss: {np.mean(val_loss)} \
            | validation acc: {np.mean(val_acc)}")
with torch.no_grad():
    # Evaluation
    torch.save(model.state_dict(),
               log_dir + f'[{data.name}]-pretrained-classifier.pt')
    ic("Model Checkpoint Saved!")
    test_backbone_D(model, data.ind_val_loader)

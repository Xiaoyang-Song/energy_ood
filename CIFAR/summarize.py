import os
import numpy as np
import argparse


parser = argparse.ArgumentParser(description="details")
parser.add_argument('--regime', type=str)
parser.add_argument('--method', type=str)
parser.add_argument('--experiment', type=str)
parser.add_argument('--energy_baseline', action='store_true', default=False)
args = parser.parse_args()

if not args.energy_baseline:
    EXP_DSET = args.experiment
    regime = args.regime
    method = args.method

    N = [8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096]
    # N = [8] # used for debugging



    if method == 'OE':
        index = -2
    elif method == 'energy':
        if EXP_DSET in ['FashionMNIST', 'MNIST']:
            index = -23
        elif EXP_DSET == 'MNIST-FashionMNIST':
            index = -22
        elif EXP_DSET == 'SVHN':
            index = -25
        elif EXP_DSET == 'CIFAR10-SVHN':
            index = -24 


    AUCs = []
    TPR95 = []
    TPR99 = []
    for n in N:
        file_path = os.path.join('out', method, f'{EXP_DSET}-{regime}', f'{n}.log')
        with open(file_path, 'r') as f:
                lines = f.readlines()
                # print(lines[index])
                results = lines[index].strip().split(" & ")
                auc, tpr95, tpr99 = float(results[2]), float(results[0]), float(results[1])

        AUCs.append(auc)
        TPR95.append(tpr95)
        TPR99.append(tpr99)


    print(f"Summary for {EXP_DSET} with {regime} regime:")
    print(f"N: {N}")
    print(f"AUCs: {', '.join(f'{f:.4f}' for f in AUCs)}")
    print(f"TPR95: {', '.join(f'{f:.4f}' for f in TPR95)}")
    print(f"TPR99: {', '.join(f'{f:.4f}' for f in TPR99)}\n\n")

else:
    # FOR energy baseline
    EXP_DSET = args.experiment
    regime = args.regime
    method = args.method
    assert args.method == 'energy', "For energy baseline, method must be 'energy'"

    n = 8 # default value for energy baseline, number of samples actually does not matter.
    # Thus, arbitrary file works.
    file_path = os.path.join('out', method, f'{EXP_DSET}-{regime}', f'{n}.log')
    with open(file_path, 'r') as f:
            lines = f.readlines()
            # print(lines[index])
            results = lines[-2].strip().split(" & ")
            auc, tpr95, tpr99 = float(results[2]), float(results[0]), float(results[1])
    # print("Energy Baseline")
    print(f"Summary for {EXP_DSET} with {regime} regime:")
    print(f"AUC: {auc:.4f}\nTPR95: {tpr95:.4f}\nTPR99: {tpr99:.4f}\n\n")

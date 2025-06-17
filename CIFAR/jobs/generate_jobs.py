import os
import numpy as np
import argparse


parser = argparse.ArgumentParser(description='Tunes a CIFAR Classifier with OE',
                                 formatter_class=argparse.ArgumentDefaultsHelpFormatter)
parser.add_argument('--exp', type=str)
parser.add_argument('--regime', type=str)
parser.add_argument('--method', type=str)

args = parser.parse_args()


# GL
ACCOUNT = 'sunwbgt0'
TIME = "4:00:00"
# Configuration
# EXP_DSET = 'fmnist'
# EXP_DSET = 'fmnist-R2'
# EXP_DSET = 'cifar10-svhn'
# EXP_DSET = 'mnist'
EXP_DSET = 'mnist-fashionmnist' 
# EXP_DSET = 'svhn' 
# EXP_DSET = 'svhn-R2'
# regime = 'Imbalanced'
regime = 'Balanced'
method = 'OE'

regime=args.regime
EXP_DSET = args.exp
method = args.method

N = [8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096]

CMD_ONLY = False


for n in N:
    print(f"sbatch jobs/{EXP_DSET}/{n}-{method}.sh")

if not CMD_ONLY:
    print("\n\n# Generating job files...")
    # Create logging directory
    log_path = os.path.join('checkpoint', 'log', EXP_DSET)
    os.makedirs(log_path, exist_ok=True)

    for n in N:
        # Create job directory
        job_path = os.path.join('jobs', EXP_DSET)
        os.makedirs(job_path, exist_ok=True)
        # Declare job name
        filename = os.path.join('jobs', EXP_DSET, f"{n}-{method}.sh")
        # Write files
        f = open(filename, 'w')
        f.write("#!/bin/bash\n\n")
        f.write(f"#SBATCH --account={ACCOUNT}\n")
        f.write(f"#SBATCH --job-name=j{n}\n")
        f.write("#SBATCH --mail-user=xysong@umich.edu\n")
        f.write("#SBATCH --mail-type=BEGIN,END,FAIL\n")
        f.write("#SBATCH --nodes=1\n")
        f.write("#SBATCH --partition=gpu\n")
        f.write("#SBATCH --gpus=1\n")
        f.write("#SBATCH --mem-per-gpu=16GB\n")
        f.write(f"#SBATCH --time={TIME}\n")
        f.write(f"#SBATCH --output=/scratch/sunwbgt_root/sunwbgt98/xysong/energy_ood/CIFAR/out/{method}/{EXP_DSET}-{regime}/{n}.log\n\n")
        
        f.write(
            f"""python train.py --dataset {EXP_DSET} --score {method} --n_ood {n} --regime {regime} --epochs 100\n"""
        )

        f.write(
            f"""python test.py --dataset {EXP_DSET} --score {method} --num_to_avg 5 --type ft --ft_n {n} --ft_epochs 99 --regime {regime}\n"""    
        )

        f.close()
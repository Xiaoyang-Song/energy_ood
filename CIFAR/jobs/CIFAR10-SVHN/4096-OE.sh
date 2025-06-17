#!/bin/bash

#SBATCH --account=sunwbgt0
#SBATCH --job-name=j4096
#SBATCH --mail-user=xysong@umich.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --nodes=1
#SBATCH --partition=gpu
#SBATCH --gpus=1
#SBATCH --mem-per-gpu=16GB
#SBATCH --time=4:00:00
#SBATCH --output=/scratch/sunwbgt_root/sunwbgt98/xysong/energy_ood/CIFAR/out/OE/CIFAR10-SVHN-Balanced/4096.log

python train.py --dataset CIFAR10-SVHN --score OE --n_ood 4096 --regime Balanced --epochs 100
python test.py --dataset CIFAR10-SVHN --score OE --num_to_avg 5 --type ft --ft_n 4096 --ft_epochs 99 --regime Balanced

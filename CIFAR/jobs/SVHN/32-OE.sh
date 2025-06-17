#!/bin/bash

#SBATCH --account=sunwbgt0
#SBATCH --job-name=j32
#SBATCH --mail-user=xysong@umich.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --nodes=1
#SBATCH --partition=gpu
#SBATCH --gpus=1
#SBATCH --mem-per-gpu=16GB
#SBATCH --time=4:00:00
#SBATCH --output=/scratch/sunwbgt_root/sunwbgt98/xysong/energy_ood/CIFAR/out/OE/SVHN-Balanced/32.log

python train.py --dataset SVHN --score OE --n_ood 32 --regime Balanced --epochs 100
python test.py --dataset SVHN --score OE --num_to_avg 5 --type ft --ft_n 32 --ft_epochs 99 --regime Balanced

#!/bin/bash

#SBATCH --account=sunwbgt0
#SBATCH --job-name=j512
#SBATCH --mail-user=xysong@umich.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --nodes=1
#SBATCH --partition=gpu
#SBATCH --gpus=1
#SBATCH --mem-per-gpu=16GB
#SBATCH --time=1:30:00
#SBATCH --output=/scratch/sunwbgt_root/sunwbgt98/xysong/energy_ood/CIFAR/out/OE/CIFAR10-SVHN-Balanced/512.log

python train.py --dataset CIFAR10-SVHN --score OE --n_ood 512 --regime Balanced --epochs 100
python test.py --dataset CIFAR10-SVHN --score MSP --num_to_avg 5 --type OE --ft_n 512 --ft_epochs 99 --regime Balanced --out_as_pos

#!/bin/bash

#SBATCH --account=sunwbgt0
#SBATCH --job-name=j64
#SBATCH --mail-user=xysong@umich.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --nodes=1
#SBATCH --partition=gpu
#SBATCH --gpus=1
#SBATCH --mem-per-gpu=16GB
#SBATCH --time=4:00:00
#SBATCH --output=/scratch/sunwbgt_root/sunwbgt98/xysong/energy_ood/CIFAR/out/OE/SVHN-Imbalanced/64.log

python train.py --dataset SVHN --score OE --n_ood 64 --regime Imbalanced --epochs 100
python test.py --dataset SVHN --score MSP --num_to_avg 5 --type OE --ft_n 64 --ft_epochs 99 --regime Imbalanced --out_as_pos

#!/bin/bash

#SBATCH --account=sunwbgt0
#SBATCH --job-name=j1024
#SBATCH --mail-user=xysong@umich.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --nodes=1
#SBATCH --partition=gpu
#SBATCH --gpus=1
#SBATCH --mem-per-gpu=16GB
#SBATCH --time=00:15:00
#SBATCH --output=/scratch/sunwbgt_root/sunwbgt98/xysong/energy_ood/CIFAR/out/OE/FashionMNIST-Imbalanced/1024.log

python train.py --dataset FashionMNIST --score OE --n_ood 1024 --regime Imbalanced --epochs 100
python test.py --dataset FashionMNIST --score MSP --num_to_avg 5 --type OE --ft_n 1024 --ft_epochs 99 --regime Imbalanced --out_as_pos

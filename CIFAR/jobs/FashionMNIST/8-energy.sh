#!/bin/bash

#SBATCH --account=sunwbgt0
#SBATCH --job-name=j8
#SBATCH --mail-user=xysong@umich.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --nodes=1
#SBATCH --partition=gpu
#SBATCH --gpus=1
#SBATCH --mem-per-gpu=16GB
#SBATCH --time=4:00:00
#SBATCH --output=/scratch/sunwbgt_root/sunwbgt98/xysong/energy_ood/CIFAR/out/energy/FashionMNIST-Balanced/8.log

python train.py --dataset FashionMNIST --score energy --n_ood 8 --regime Balanced --epochs 100
python test.py --dataset FashionMNIST --score energy --num_to_avg 5 --type ft --ft_n 8 --ft_epochs 99 --regime Balanced

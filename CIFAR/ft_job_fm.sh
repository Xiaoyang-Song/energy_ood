#!/bin/bash

#SBATCH --account=sunwbgt98
#SBATCH --job-name=EFT-FM
#SBATCH --mail-user=xysong@umich.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --nodes=1
#SBATCH --partition=gpu
#SBATCH --gres=gpu:1
#SBATCH --mem-per-gpu=12GB
#SBATCH --time=24:00:00
#SBATCH --output=/scratch/sunwbgt_root/sunwbgt98/xysong/jobs/Energy-FT-FM-II.log

for N in 4 8 16 32 64 128 256 512 1024 2048 4096; do
    python train.py --dataset FashionMNIST --score energy --n_ood $N --regime Imbalanced --epochs 100
    python test.py --dataset FashionMNIST --score energy --num_to_avg 5 --type ft --ft_n $N --ft_epochs 99 --regime Imbalanced
done
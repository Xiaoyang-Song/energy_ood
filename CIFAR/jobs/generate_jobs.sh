

# Energy
python jobs/generate_jobs.py --regime Balanced --exp MNIST --method energy
python jobs/generate_jobs.py --regime Balanced --exp FashionMNIST --method energy
python jobs/generate_jobs.py --regime Balanced --exp MNIST-FashionMNIST --method energy
python jobs/generate_jobs.py --regime Balanced --exp SVHN --method energy
python jobs/generate_jobs.py --regime Balanced --exp CIFAR10-SVHN --method energy

python jobs/generate_jobs.py --regime Imbalanced --exp FashionMNIST-R2 --method energy
python jobs/generate_jobs.py --regime Imbalanced --exp SVHN-R2 --method energy

# OE
python jobs/generate_jobs.py --regime Balanced --exp MNIST --method OE
python jobs/generate_jobs.py --regime Balanced --exp FashionMNIST --method OE
python jobs/generate_jobs.py --regime Balanced --exp MNIST-FashionMNIST --method OE
python jobs/generate_jobs.py --regime Balanced --exp SVHN --method OE
python jobs/generate_jobs.py --regime Balanced --exp CIFAR10-SVHN --method OE

python jobs/generate_jobs.py --regime Imbalanced --exp FashionMNIST-R2 --method OE
python jobs/generate_jobs.py --regime Imbalanced --exp SVHN-R2 --method OE

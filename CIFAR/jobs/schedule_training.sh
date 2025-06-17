

sbatch jobs/PreTraining/MNIST.sh

sbatch jobs/PreTraining/FashionMNIST.sh

sbatch jobs/PreTraining/MNIST-FashionMNIST.sh

sbatch jobs/PreTraining/SVHN.sh

sbatch jobs/PreTraining/CIFAR10-SVHN.sh

# python classifier_train.py --dataset MNIST --max_epochs 100 --lr 0.001 --opt sgd
# python classifier_train.py --dataset FashionMNIST --max_epochs 100 --lr 0.001 --opt sgd
# python classifier_train.py --dataset MNIST-FashionMNIST --max_epochs 100 --lr 0.001 --opt sgd
# python classifier_train.py --dataset SVHN --max_epochs 100 --lr 0.001 --opt sgd
# python classifier_train.py --dataset CIFAR10-SVHN --max_epochs 300 --lr 0.1 --opt sgd
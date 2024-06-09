PYTHONPATH="$(dirname $0)/..":$PYTHONPATH python -u tools/train.py     --name test     --batch_size 64     --times 1     --num_epochs 50     --dataset_name t2m

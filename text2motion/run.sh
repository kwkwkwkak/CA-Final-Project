PYTHONPATH="$(dirname $0)/..":$PYTHONPATH python -u tools/train.py     --name test     --batch_size 128     --times 25     --num_epochs 50     --dataset_name t2m

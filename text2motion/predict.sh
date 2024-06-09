#!/bin/bash

# Check if the user has provided an argument
if [ -z "$1" ]; then
  echo "Usage: $0 \"text description\""
  exit 1
fi

# Assign the first argument to a variable
TEXT_PARAM=$1

PYTHONPATH="$(dirname $0)/..":$PYTHONPATH \
python -u tools/visualization.py \
    --opt_path checkpoints/t2m/test/opt.txt \
    --text "$TEXT_PARAM" \
    --motion_length 60 \
    --result_path "test_sample.mp4" \
    --npy_path "" \
    --gpu_id 0

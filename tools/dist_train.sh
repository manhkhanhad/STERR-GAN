#!/usr/bin/env bash

# CONFIG=$1
# GPUS=$2
# NNODES=${NNODES:-1}
# NODE_RANK=${NODE_RANK:-0}
# PORT=${PORT:-29500}
# MASTER_ADDR=${MASTER_ADDR:-"127.0.0.1"}
# PYTHONPATH="$(dirname $0)/..":$PYTHONPATH \
# CUDA_VISIBLE_DEVICES=0 python -m torch.distributed.launch \
#     --nnodes=$NNODES \
#     --node_rank=$NODE_RANK \
#     --master_addr=$MASTER_ADDR \
#     --nproc_per_node=$GPUS \
#     --master_port=$PORT \
#     $(dirname "$0")/train.py \
#     $CONFIG \
#     --seed 0 \
#     --launcher pytorch ${@:3}

CONFIG="configs/sterr_gan.py"
GPUS=1
NNODES=${NNODES:-1}
NODE_RANK=${NODE_RANK:-0}
PORT=${PORT:-29501}
MASTER_ADDR=${MASTER_ADDR:-"127.0.0.1"}
PYTHONPATH="$(dirname $0)/..":$PYTHONPATH \
BASICSR_JIT=True CUDA_VISIBLE_DEVICES=0 python -m torch.distributed.launch \
    --nnodes=$NNODES \
    --node_rank=$NODE_RANK \
    --master_addr=$MASTER_ADDR \
    --nproc_per_node=$GPUS \
    --master_port=$PORT \
    $(dirname "$0")/train.py \
    $CONFIG \
    --seed 0 \
    --launcher pytorch ${@:3}
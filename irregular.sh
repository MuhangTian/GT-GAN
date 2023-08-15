#!/bin/bash

# python -m debugpy --listen 5678 --wait-for-client \
python \
    GTGAN_stocks_irregular.py \
    --train \
    --data stock \
    --dims 32-64-64-32 \
    --atol 1e-2 \
    --rtol 1e-3 \
    --first_epoch 10000 \
    --max-steps 2000 \
    --activation exp \
    --last_activation_r softplus \
    --last_activation_d identity \
    --reconstruction 0 \
    --kinetic-energy 0.05 \
    --jacobian-norm2 0.01 \
    --directional-penalty 0.05 \
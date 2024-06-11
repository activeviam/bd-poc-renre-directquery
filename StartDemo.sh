#!/bin/bash

export ANACONDA_DIR=/home/ubuntu/miniconda3/bin
export PATH=$ANACONDA_DIR:$PATH
export ENV_NAME= atoti-0.9.0.4972.20240510095356

# -------------------------------------------------------

source activate ${ENV_NAME}
nohup jupyter lab

# -------------------------------------------------------

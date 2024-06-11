#!/bin/bash

export ANACONDA_DIR=/home/ubuntu/miniconda3/bin
export PATH=$ANACONDA_DIR:$PATH
export ENV_NAME=atoti-0.9.0.4972.20240510095356
export ATOTI_VERSION=0.9.0.4972.20240510095356
# -------------------------------------------------------

conda env remove -n ${ENV_NAME}
conda create -y -n ${ENV_NAME}
source activate ${ENV_NAME}
conda install -y atoti=${ATOTI_VERSION} atoti-jupyterlab=${ATOTI_VERSION} atoti-sql=${ATOTI_VERSION} atoti-directquery-jdbc=${ATOTI_VERSION} python

# -------------------------------------------------------

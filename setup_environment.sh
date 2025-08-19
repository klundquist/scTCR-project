#!/bin/bash

ENV_NAME="scTCR"

conda create -n $ENV_NAME python=3.12

conda install -n $ENV_NAME -c bioconda parasail-python -y

conda run -n $ENV_NAME pip install muon scanpy scirpy pandas numpy scipy matplotlib seaborn cycler

conda install -n $ENV_NAME ipykernel --update-deps --force-reinstall
#!/bin/bash/

conda install pip
conda create -n ML_base tensorflow-gpu pip ipykernel matplotlib seaborn scipy numpy dask pytorch
conda activate ML_base
conda install -c conda-forge gudhi
conda deactivate

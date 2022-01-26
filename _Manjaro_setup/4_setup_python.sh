#!/bin/bash/

#
# Script to setup Python, and Anaconda
# With Manjaro, there might be an issue with the setup of the
# LAPACK library (Fortran) that's needed for computing using 
# scipy, numpy, etc.
#
# YOU MIGHT NEED TO REBOOT/RESTART SHELL BETWEEN STEPS
#

sudo pacman -Syyu 

# STEP 1: ANACONDA SETUP

cd ~/Downloads
LATEST_ANACONDA=$(wget -O - https://www.anaconda.com/distribution/ 2>/dev/null | sed -ne 's@.*\(https:\/\/repo\.anaconda\.com\/archive\/Anaconda3-.*-Linux-x86_64\.sh\)\">64-Bit (x86) Installer.*@\1@p')
wget $LATEST_ANACONDA
chmod +x Anaconda3*.sh
./Anaconda3*.sh

# STEP 2: JUPYTER NOTEBOOK SETUP

conda install pip
conda install -c conda-forge notebook nb_conda_kernels jupyter_contrib_nbextensions

# STEP 3: FIRST CONDA ENV SETUP

conda create -n ML_base tensorflow-gpu ipykernel matplotlib seaborn scipy numpy dask pytorch torchvision torchaudio cudatoolkit=11.3 -c pytorch
conda activate ML_base
conda install -c conda-forge gudhi # gudhi is not available in conda-forge
python
import torch
print(torch.cuda.is_available())
print(torch.version.cuda)
print(torch.cuda.device_count())
print(torch.cuda.get_device_properties("cuda:0"))
print(torch.cuda.get_device_name("cuda:0"))
exit()
conda deactivate

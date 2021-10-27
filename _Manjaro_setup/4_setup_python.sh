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
chmod +x Anaconda3*.sh # make it executable
./Anaconda3*.sh # execute the installerA

# STEP 2: JUPYTER NOTEBOOK SETUP

conda install pip
conda install -c conda-forge notebook
conda install -c conda-forge nb_conda_kernels
conda install -c conda-forge jupyter_contrib_nbextensions

# STEP 3: FIRST CONDA ENV SETUP

conda create -n ML_base tensorflow-gpu ipykernel matplotlib seaborn scipy numpy dask pytorch
conda activate ML_base
conda install -c conda-forge gudhi # gudhi is not available in conda-forge
conda deactivate

# STEP 4: JN DESKTOP ICON SETUP

cp jupyter-notebook.desktop ~/.local/share/applications

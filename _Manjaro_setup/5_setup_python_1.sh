#!/bin/bash/

#sudo pacman -S fltk # install the BLAS library for fast optimization
sudo pacman -Syyu 
#sudo pacman -Syu python-pip
#pip install scipy numpy pandas matplotlib seaborn numba tensorflow keras dask pytorch gudhi
#sudo pacman -Syu jupyter-notebook
#export JUPYTERLAB_DIR=$HOME/.local/share/jupyter/lab

# LINK

cd ~/Downloads
LATEST_ANACONDA=$(wget -O - https://www.anaconda.com/distribution/ 2>/dev/null | sed -ne 's@.*\(https:\/\/repo\.anaconda\.com\/archive\/Anaconda3-.*-Linux-x86_64\.sh\)\">64-Bit (x86) Installer.*@\1@p')
wget $LATEST_ANACONDA
chmod +x Anaconda3*.sh # make it executable
./Anaconda3*.sh # execute the installer

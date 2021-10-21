#!/bin/bash/

sudo pacman -S fltk # install the BLAS library for fast optimization
sudo pacman -Syyu 
sudo pacman -Syu python-pip
pip install scipy numpy pandas matplotlib seaborn numba tensorflow keras dask pytorch gudhi
sudo pacman -Syu jupyter-notebook
export JUPYTERLAB_DIR=$HOME/.local/share/jupyter/lab

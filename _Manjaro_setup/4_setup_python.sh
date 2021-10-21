#!/bin/bash/

sudo pacman -S fltk # install the BLAS library for fast optimization
sudo pacman -Syyu 
sudo pacman -Syu python-pip
pip install numpy pandas matplotlib seaborn numba tensorflow

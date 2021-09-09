#!/bin/bash/

sudo pacman -Syyu 
sudo pacman -Syu python-pip
pip install numpy pandas matplotlib seaborn numba tensorflow

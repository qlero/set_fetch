#!/bin/bash/

sudo pacman -Syyu 
sudo pacman -S --needed base-devel git wget yajl # select default all)
cd /tmp 
git clone https://aur.archlinux.org/package-query.git
cd package-query
makepkg -si
git clone https://aur.archlinux.org/yaourt.git
cd yaourt
makepkg -si
sudo pacman -Sy yaourt
yaourt -S rstudio-desktop-bin

# R Kernel in Jupyter 
# https://simply-python.com/2019/06/24/running-r-on-jupyter-notebook-with-r-kernel-no-anaconda/
#Objectives:
#Install R Kernel on Jupyter Notebook (Windows)
#Required Tools:
#R for windows— R for windows
#JupyterNotebook — Jupyter Notebook
#Steps:
#Install R. Use the R terminal (do not use R studio) to install R packages:
#  install.packages(c(‘repr’, ‘IRdisplay’, ‘evaluate’, ‘crayon’, ‘pbdZMQ’, ‘devtools’, ‘uuid’, ‘digest’))
#  install.packages(‘IRkernel’)
#Make Kernel available to Jupyter
#  IRkernel::installspec()
#  OR IRkernel::installspec(user = FALSE) #install system-wide
#Open a notebook and open new R script.

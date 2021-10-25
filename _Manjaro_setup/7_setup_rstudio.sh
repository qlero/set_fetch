#!/bin/bash/


# VERSION 1
sudo pacman -Syyu 
sudo pacman -S --needed base-devel git wget yajl # select default all)
sudo pacman -Syu gcc-fortran
cd ~/Downloads
git clone https://aur.archlinux.org/package-query.git
cd ~/Downloads/package-query
makepkg -si
cd ~/Downloads
git clone https://aur.archlinux.org/yaourt.git
cd ~/Downloads/yaourt
makepkg -si
sudo pacman -Sy yaourt
yaourt -S rstudio-desktop-bin

# VERSION 2
sudo pacman -S yay
yay -S rstudio-desktop-bin

# INSTALL R Kernel in Jupyter 
# https://simply-python.com/2019/06/24/running-r-on-jupyter-notebook-with-r-kernel-no-anaconda/
#Objectives:
#Install R Kernel on Jupyter Notebook (Windows)
#Required Tools:
#R for windows— R for windows
#JupyterNotebook — Jupyter Notebook
#Steps:
#Install R. Use the R terminal (do not use R studio) to install R packages:
#  install.packages(c("repr", "IRdisplay", "evaluate", "crayon", "pbdZMQ",  "devtools", "uuid", "digest"))
#  install.packages("IRkernel")
#Make Kernel available to Jupyter
#  IRkernel::installspec()
#  OR IRkernel::installspec(user = FALSE) #install system-wide
#Open a notebook and open new R script.

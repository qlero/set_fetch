#!/bin/bash/

#
# Script to setup R and R studio
#

#####
## VERSION 1 (better version below)
#####

# STEP 1: setup of preliminary libraries
sudo pacman -Syyu 
sudo pacman -S --needed base-devel git wget yajl # select default all)
sudo pacman -Syu gcc-fortran # necessary for R compilation steps

# STEP 2: retrieve packages to install yaourt (package repo with RS)

### IF YOU HAVE YAY SKIP TO NEXT STEP

cd ~/Downloads
git clone https://aur.archlinux.org/package-query.git
cd ~/Downloads/package-query
makepkg -si
cd ~/Downloads
git clone https://aur.archlinux.org/yaourt.git
cd ~/Downloads/yaourt
makepkg -si
sudo pacman -Sy yaourt

# STEP3: RStudio INSTALLATION
yaourt -S rstudio-desktop-bin

#####
## VERSION 2
#####

sudo pacman -S yay
yay -S rstudio-desktop-bin

#####
## INSTALLING THE R KERNEL IN JUPYTER NOTEBOOK
#####

#  install.packages(c("repr", "IRdisplay", "evaluate", "crayon", "pbdZMQ",  "devtools", "uuid", "digest"))
#  install.packages("IRkernel")

#Open a notebook and open new R script.
#Make Kernel available to Jupyter
#  IRkernel::installspec()
#  OR IRkernel::installspec(user = FALSE) #install system-wide

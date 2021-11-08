#!/bin/bash/

#
# Script to setup a Nvidia graphics card (not tested for AMD cards)
#

sudo pacman -Syyu 
sudo mhwd -a pci nonfree 0300
sudo reboot # requires a reboot

# sudo pacman -S nvidia nvidia-utils cuda cudnn

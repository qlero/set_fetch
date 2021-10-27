#!/bin/bash/

#
# Additional script setup for a Nvidia card if Cuda
# and Cudnn have not set up properly
#

# check first with nvidia-smi

sudo pacman -Syyu 
sudo pacman -R cuda cudnn
sudo pacman -Syu cuda cudnn
sudo reboot

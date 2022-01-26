#!/bin/bash/

#
# Script to setup a Nvidia graphics card (not tested for AMD cards)
#

# sudo pacman-mirrors -f 5
sudo pacman -Syyu 
# sudo mhwd-kernel --listinstalled
# sudo mhwd-kernel --install linux515
# sudo mhwd-kernel --install linux510
# reboot here
# sudo mhwd-kernel --remove linux513
sudo mhwd -a pci nonfree 0300 -f
# reboot here
sudo mhwd -S cuda cudnn

# sudo pacman -S nvidia nvidia-utils cuda cudnn

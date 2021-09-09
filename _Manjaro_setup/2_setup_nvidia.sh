#!/bin/bash/

sudo pacman -Syyu 
sudo mhwd -a pci nonfree 0300
sudo reboot

#!/bin/bash/

sudo pacman -Syyu 
sudo pacman -R cuda cudnn
sudo pacman -Syu cuda cudnn
sudo reboot

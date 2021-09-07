#!/bin/bash

sudo pacman -R cuda cudnn
sudo mhwd -r pci video-nvidia-440xx
sudo mhwd -i pci video-nvidia-435xx
reboot

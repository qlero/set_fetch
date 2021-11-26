#!/bin/bash

sudo rm /var/lib/pacman/db.lck
sudo pacman -Syyu rlwrap cmake ffmpeg
sudo pacman -Syyu openblas libx11
pamac install base-devel 
mkdir ~/Downloads/tmp
git clone https://aur.archlinux.org/yay-git.git ~/Downloads/tmp
cd ~/Downloads/tmp/yay
makepkg -si

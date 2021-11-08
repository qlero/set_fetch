#!/bin/bash

sudo pacman -Syyu rlwrap cmake ffmpeg
sudo pacman -Syyu openblas libx11
mkdir ~/Downloads/tmp
git clone https://aur.archlinux.org/yay-git.git ~/Downloads/tmp
cd ~/Downloads/tmp/yay
makepkg -si

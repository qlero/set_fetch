#!/bin/bash

sudo pacman -Syyu rlwrap make cmake openblas libx11
mkdir ~/Downloads/
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

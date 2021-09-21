#!/bin/bash/

sudo pacman -Syyu 
sudo pacman -S --needed base-devel git wget yajl # select default all)
cd /tmp 
git clone https://aur.archlinux.org/package-query.git
cd package-query
makepkg -si
git clone https://aur.archlinux.org/yaourt.git
cd yaourt
makepkg -si
sudo pacman -Sy yaourt
yaourt -S rstudio-desktop-bin

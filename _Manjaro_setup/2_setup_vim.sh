#!/bin/bash/

sudo pacman -Syyu 
sudo pacman -Syu vim
sudo cp ../miramare_vim/_vimrc ~/.vimrc
sudo cp ../miramare_vim/miramare.vim /usr/share/vim/vim82/colors/miramare.vim

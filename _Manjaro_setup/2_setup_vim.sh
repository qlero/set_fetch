#!/bin/bash/

#
# Script to setup the miramare skin over Vim 
#

sudo pacman -Syyu vim
sudo cp ../miramare_vim/_vimrc ~/.vimrc && sudo cp ../miramare_vim/miramare.vim /usr/share/vim/vim82/colors/miramare.vim

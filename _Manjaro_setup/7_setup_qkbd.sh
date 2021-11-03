#!/bin/bash

sudo pacman -Syu rlwrap
unzip setup_files.zip -d .
mv setup_7/q ~/q
echo "alias q='QHOME=~/q rlwrap -r ~/q/l32/q'" >> ~/.bash_profile
echo "alias q='QHOME=~/q rlwrap -r ~/q/l32/q'" >> ~/.bashrc
echo "alias q='QHOME=~/q rlwrap -r ~/q/l32/q'" >> ~/.zshrc

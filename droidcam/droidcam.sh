#!/bin/bash

#
# Script to install and launch droidcam: to use an android phone as a webcam
#

sudo pacman -Syu dkms base-devel --needed

# Reboot afterwards.

sudo pacman -S gcc make
sudo pacman -Syu linux-headers-`uname -r` gcc make
sudo pacman -S $(ls /boot | awk -F "-" '/^linux/ { print $1"-headers" }')
#for debian/ubuntu
#sudo apt install linux-headers-`uname -r` gcc make

cd /tmp/
# check if the link is still the most up to date
wget -O droidcam_latest.zip https://files.dev47apps.net/linux/droidcam_1.8.0.zip
# sha1sum: 3f94d6ec57a191ad146392fcf094b205e375e1ef
unzip droidcam_latest.zip -d droidcam
cd droidcam && sudo ./install-client

sudo ./install-video
lsmod | grep v4l2loopback_dc

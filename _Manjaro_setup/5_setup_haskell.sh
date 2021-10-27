#!/bin/bash

#
# Script to setup Haskell
#

mkdir ~/tmpdir; export TMPDIR="$HOME/tmpdir"
sudo pacman -Syu make
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh

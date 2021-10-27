#!/bin/bash/

#
# Script provided by github.com to setup a ssh connection 
# between local repositories and one's online github account.
# 

ssh-keygen -t ed25519 -C ""
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub # ssh pub. key to set in github settings

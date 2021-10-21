#!/bin/bash/

ssh-keygen -t ed25519 -C ""
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub

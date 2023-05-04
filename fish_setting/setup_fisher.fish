#!/bin/bash

curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
sudo apt update

#check
fisher -v

# plugin
fisher install oh-my-fish/theme-bobthefish
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd ..
rm -rf ./fonts
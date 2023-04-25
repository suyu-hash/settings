#!/bin/bash

curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
sudo apt update

#check
fisher -v
#!/bin/bash

### tmux ###

sudo git clone https://github.com/tmux/tmux
cd tmux && sudo ./autogen.sh
sudo ./configure && sudo make
sudo make install

#tmux -v

# tmux config
cd ../
sudo mv .tmux.conf ~/.tmux.conf
#!/bin/bash

sudo apt update

### fish and fisher
chmod +x ./fish_setting/fish_setting.sh && ./fish_setting/fish_setting.sh
chmod +x ./fish_setting/fish_settinger.fish && fish ./fish_setting/fish_settinger.fish

# write my_config(fish) path
echo "source $PWD/fish_setting/my_config.fish" >> ~/.config/fish/config.fish

### imwheel
sudo apt install -y imwheel
echo "imwheel -k -b \"4 5\"" >> ~/.bashrc

### fish
# always write last line
echo "exec fish" >> ~/.bashrc
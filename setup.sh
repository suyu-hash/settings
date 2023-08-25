#!/bin/bash

sudo apt update

### fish and fisher ###
sudo chmod +x $PWD/fish_setting/setup_fish.sh && $PWD/fish_setting/setup_fish.sh
sudo chmod +x $PWD/fish_setting/setup_fisher.fish && fish $PWD/fish_setting/setup_fisher.fish

# write my_config(fish) path
echo "source $PWD/fish_setting/my_config.fish" >> ~/.config/fish/config.fish

### imwheel ###
sudo apt install -y imwheel
#echo "imwheel -k -b \"4 5\"" >> ~/.bashrc # option


### ROS2 humble ###
#sudo chmod +x $PWD/ros2humble_setting/setup_ros2humble.sh && $PWD/ros2humble_setting/setup_ros2humble.sh
#echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc


### fish ###
# to activate fish
# always write last line
echo "exec fish" >> ~/.bashrc

### tmux ###
sudo chmod +x $PWD/tmux/setup_tmux.sh && cd $PWD/tmux/ && ./setup_tmux.sh && cd ../
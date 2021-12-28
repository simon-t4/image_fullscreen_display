#!/bin/bash
source /opt/ros/noetic/setup.bash
source devel/setup.bash
echo "stop rebo" | netcat localhost 7788
#gnome-terminal -- roslaunch image_fullscreen_display rebo.launch


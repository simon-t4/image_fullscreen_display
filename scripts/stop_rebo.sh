#!/bin/bash
. /opt/ros/noetic/setup.bash
. devel/setup.bash
echo "stop rebo" | netcat localhost 7788
#gnome-terminal -- roslaunch image_fullscreen_display rebo.launch


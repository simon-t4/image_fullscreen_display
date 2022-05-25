#!/bin/bash
read MESSAGE
echo "$MESSAGE"
cd /home/tier4/ces2022/ws
. /opt/ros/noetic/setup.bash
. devel/setup.bash

gnome-terminal -- roslaunch image_fullscreen_display rebo_web.launch & echo $! > /tmp/rebo_gterm_pid




#!/bin/bash
read MESSAGE
echo "$MESSAGE"
cd /home/simonthompson/work/ngss/ces2022/demo/ws
. /opt/ros/noetic/setup.bash
. devel/setup.bash

gnome-terminal -- roslaunch image_fullscreen_display rebo_web.launch & echo $! > /tmp/rebo_gterm_pid




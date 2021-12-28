#!/bin/bash
source /opt/ros/noetic/setup.bash
source devel/setup.bash
echo "start rebo" | netcat localhost 7777


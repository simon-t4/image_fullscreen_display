#!/bin/bash
. /opt/ros/noetic/setup.bash
. devel/setup.bash
echo "start rebo" | netcat localhost 7777


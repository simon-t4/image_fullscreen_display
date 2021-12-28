#!/bin/bash
read MESSAGE
echo "$MESSAGE"
. /opt/ros/noetic/setup.bash
. devel/setup.bash

rosnode kill image_fullscreen_display
#rosnode kill rqt_gui
rosnode kill image_transition_multiplexer
rosnode kill rviz
#rosnode kill tf_right_c1_baraja
#rosnode kill tf_left_c1_baraja
#rosnode kill camera/left/camera_info_left
#rosnode kill camera/right/camera_info_right
#rosnode kill camera/left/image_decompress_left
#rosnode kill camera/right/image_decompress_right
#rosnode kill camera/left/image_proc_left
#rosnode kill camera/right/image_proc_right
rosnode kill camera/right/fusion_right
rosnode kill camera/left/fusion_left
rosnode kill video_recorder_nodelet
#rosnode kill rosbridge_websocket

pkill -9 image_full
pkill -9 rviz_cine
pkill -9 rosout
pkill -9 roslaunch

#rosnode kill `rosnode list | grep -i "rqt_gui"`

yes | rosnode cleanup
pid=`cat /tmp/rebo_gterm_pid`
echo "$pid"
kill -- -$pid



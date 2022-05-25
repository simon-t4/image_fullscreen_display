#!/bin/bash
cd /home/tier4/ces2022/ws
. /opt/ros/noetic/setup.bash
. devel/setup.bash

./src/image_display/scripts/listen_messages.sh
cd /home/tier4/ces2022/ws/src/image_display
pkill -f php
php -S 127.0.0.1:3333 &
cd /home/tier4/ces2022/ws
firefox http://127.0.0.1:3333/public/sequence.html & 


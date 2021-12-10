cmake_minimum_required(VERSION 3.5)
project(image_fullscreen_display)

find_package(catkin REQUIRED
        sensor_msgs
        rospy
        std_msgs
        )

catkin_package()

catkin_install_python(PROGRAMS
        scripts/image_fullscreen_display.py
        DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
        )

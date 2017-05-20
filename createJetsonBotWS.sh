#!/bin/sh
# Create a ROS catkin workspace for JetsonBot
# JetsonBot is a ROS TurtleBot derived robot using the NVIDIA Jetson TX1
# This script assumes that ROS Kinetic has already been installed on the Jetson
mkdir -p ~/workspace/ROS/jetsonbot/src
cd ~/workspace/ROS/jetsonbot/src
catkin_init_workspace
cd ~/workspace/ROS/jetsonbot
catkin_make



#!/bin/sh
# Create a ROS catkin workspace for JetsonBot
# JetsonBot is a ROS TurtleBot derived robot using the NVIDIA Jetson TX1
# This script assumes that ROS Kinetic has already been installed on the Jetson
mkdir -p ~/workspace/jetsonbot/src
cd ~/workspace/jetsonbot/src
catkin_init_workspace
cd ~/workspace/jetsonbot
catkin_make



#!/bin/sh

if [ "$#" -ne 1 ]; then
    echo "usage: setupBot.sh <this computer's IP>"
fi
    
# These variables tell ROS the TurtleBot configuration;
echo export TURTLEBOT_BASE=create2 >> ~/.zshenv
echo export TURTLEBOT_STACKS=circles >> ~/.zshenv
echo export TURTLEBOT_3D_SENSOR=kinect >> ~/.zshenv
echo export TURTLEBOT_SERIAL_PORT=/dev/ttyUSB0 >> ~/.zshenv
# Use the JetsonBot development paths before using the default
echo source ~/jetsonbot/devel/setup.zsh >> ~/.zshenv
# The JetsonBot is the ROS_MASTER
echo export ROS_MASTER_URI=http://localhost:11311 >> ~/.zshenv
echo export ROS_IP=${1} >> ~/.zshenv

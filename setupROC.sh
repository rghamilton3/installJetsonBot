#!/bin/sh

if [ "$#" -ne 2 ]; then
    echo "usage: setupROC.sh <this computer's IP> <jetsonbot's IP>"
fi

# These variables tell ROS the TurtleBot configuration;
echo export TURTLEBOT_BASE=create2 >> ~/.zshenv
echo export TURTLEBOT_STACKS=circles >> ~/.zshenv
echo export TURTLEBOT_3D_SENSOR=kinect >> ~/.zshenv
echo export TURTLEBOT_SERIAL_PORT=/dev/ttyUSB0 >> ~/.zshenv
# Use the JetsonBot development paths before using the default
echo source ~/jetsonbot/devel/setup.zsh >> ~/.zshenv

# Not sure if this is still needed
#echo \# Allow RVIZ to work by unsetting the GTK_IM_MODULE environment variable >> ~/.bashrc
#echo unset GTK_IM_MODULE >> ~/.bashrc

# The JetsonBot is the ROS_MASTER
echo export ROS_MASTER_URI=http://${2}:11311 >> ~/.zshenv
echo \# export ROS_IP=${1} >> ~/.zshenv
# The ROS_HOSTNAME may need to be set
# export ROS_HOSTNAME=jetsonbot
# or
# export ROS_IP=<jetsonbot IP>

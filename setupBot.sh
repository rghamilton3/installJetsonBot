#!/bin/sh
# These variables tell ROS the TurtleBot configuration;
echo export TURTLEBOT_BASE=create2 >> ~/.zshenv
echo export TURTLEBOT_STACKS=circles >> ~/.zshenv
echo export TURTLEBOT_3D_SENSOR=kinect >> ~/.zshenv
echo export TURTLEBOT_SERIAL_PORT=/dev/ttyUSB0 >> ~/.zshenv
# Use the JetsonBot development paths before using the default
echo source ~/jetsonbot/devel/setup.zsh >> ~/.zshenv
# The JetsonBot is the ROS_MASTER
echo export ROS_MASTER_URI=http://localhost:11311 >> ~/.zshenv
echo \# Please set the following variable >> ~/.zshenv
echo \# export ROS_IP=\<this computers IP\> >> ~/.zshenv
/bin/echo -e "\e[1;32mPlease set the IP addresses of the JetsonBot in ~/.\e[0m"
/bin/echo -e "\e[1;32mUnder ROS_IP\e[0m"
/bin/echo -e "\e[1;32mJetsonBot Software Setup.\e[0m"

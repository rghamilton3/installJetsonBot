# JetsonBot
The JetsonBot is a ROS Turtlebot based robot using a NVIDIA Jetson TX1 and an iRobot Create 2 base.

> I use ZSH so all of my stuff is based on my zshenv file

There are two possible installations from the scripts in this repository:

1) Install on Jetson TX1 on a JetsonBot 

2) Install Robot Operating Center (ROC) on a separate Jetson TX1 or PC

The first two steps are the same for both installations.
The scripts assume a clean installation of ROS.

First build a catkin workspace for the installation. The directory will be named ~/workspace/jetsonbot

1) $ ./createJetsonBotWS.sh

Second install the TurtleBot software and dependencies

2) $ ./installJetsonBot.sh

The third step sets up environment variables in ~/.zshenv which configure the JetsonBot

For the JetsonBot itself:

$ ./setupBot.sh

For the Robot Operating Center:

$ ./setupROC.sh

In both cases, there will need to be some adjustment of the IP addresses of the machines involved.
Edit ~/.zshenv and go to the end of the file.

The environment variable ROS_MASTER_URI should point to the IP address of the JetsonBot which you wish to communicate.
The environment variable ROS_IP should be the address of the machine where zshenv is running.

For convenience, you may also want to add alias shortcuts for some commonly used command line. Some of these are in the file 'aliasShortcuts.txt'.

After changing zshenv, make sure to save it. After closing, you will either have to open a Terminal, or:
$ source ~/.zshenv
for the changes to zshenv to take effect.


#!/bin/sh
#
# Install Script - OpenSSH
#
##########
# Intro
echo "Install Script for SSH..."

# Installing OpenSSH Server
echo "   *Installing OpenSSH Server..."
sudo apt-get install openssh-server

# Adds Google Chrome Repository 
echo "   *Adding Google Chrome Repository..."
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

# Updates Package List
echo "   *Updating Package list..."
sudo apt-get update 

# Installs Google Chrome
echo "   *Installing Google Chrome..."
sudo apt-get install google-chrome-stable

# Exit
echo "Google Chrome is now installed!"


####
# adds service to boot script
sudo update-rc.d filename defaults

# to remove
sudo update-rc.d -f filename remove
rm /etc/init.d/vncserver


### Said to run
serreremtightrerssh -L 5901:127.0.0.1:5901 -N -f -l aplha 192.168.0.157

#!/bin/sh
#
# Install Script - Theme: Numix
#
##########
# Intro
echo "Install Script for Numix Theme..."
echo

########## START Numix
echo "Starting Numix install.."

# Adds Repository 
echo "   *Adding Repository..."
sudo add-apt-repository ppa:numix/ppa

# Updates Package List
echo "   *Updating Package list..."
sudo apt-get update 

# Install
echo "   *Installing theme..."
sudo apt-get install numix-gtk-theme
sudo apt-get install numix-icon-theme-circle

# Exit
echo "Numix is now installed!"
########## END Numix

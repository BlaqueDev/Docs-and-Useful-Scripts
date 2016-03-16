#!/bin/sh
#
# Install Script - Theme: Numix
#
##########
# Intro
echo "Install Script for Numix Theme..."
echo

########## START Radiance
echo "Starting Radiance install.."

# Adds Repository 
echo "   *Adding Repository..."
sudo add-apt-repository ppa:ravefinity-project/ppa

# Updates Package List
echo "   *Updating Package list..."
sudo apt-get update 

# Install
echo "   *Installing theme..."
sudo apt-get install ambiance-colors

# Exit
echo "Radiance is now installed!"
########## END Radiance

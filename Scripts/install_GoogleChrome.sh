#!/bin/sh
#
# Install Script - Google Chrome
#
##########
# Intro
echo "Install Script for Google Chrome..."

# Grabs Signing key from Google
echo "   *Grabbing Google signing key..."
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 

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

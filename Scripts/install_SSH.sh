#!/bin/bash
#
# Name: Open-SSH Client
# Description: Installs and Configures Open-SSH Client
# Syntax: sh user@hostname
#
################
# User and Server Login
SERVER="asteroid@"
# Intro
echo "Automated install Script for Open-SSH Client"
echo "   *Generate SSH Key Pair..."
ssh-keygen
echo
echo "	 *Complete!"
read -n 1 -p "**Press any key to continue**"
clear

# Install SSH Key on remote server
echo "   *Uploading SSH Key to remote server..."
ssh-copy-id ${SERVER}
echo
echo "	 *Complete!"
read -n 1 -p "**Press any key to continue**"
clear

# Test SSH Connection
echo "Connecting to server..."
sh ${SERVER}
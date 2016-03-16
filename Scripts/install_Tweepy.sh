#!/bin/sh
##########
# Must run as SUDO

#Download Tweepy
git clone https://github.com/tweepy/tweepy.git
cd tweepy

#Build Tweepy
python setup.py install
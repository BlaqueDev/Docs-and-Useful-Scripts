#!/bin/bash

# Check Python version
echo "Checking current python version..."
python -V
echo

# Install needed package for python development
echo "Installing needed packages for python development..."
sudo apt-get install build-essential python-dev libsqlite3-dev libreadline6-dev libgdbm-dev zlib1g-dev libbz2-dev sqlite3 zip
echo 
echo "--FINISHED!"
echo

# Install Python3
echo "Installing python3..."
sudo apt-get install python3 python3-dev
echo
echo "--FINISHED!"
echo

# Install easy_install
echo "Installing easy_install..."
mkdir ~/easy_install
cd ~/easy_install
wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py
sudo python ez_setup.py

cd $HOME
sudo rm -rf ~/easy_install/
echo
echo "--FINISHED!"
echo

# Install pip
echo "Installing pip..."
sudo easy_install pip
echo
echo "--FINISHED!"
echo

# Install virtualenv and virtualenvwrapper
echo "Installing virtualenv and virtualenvwrapper..."
sudo pip install virtualenv virtualenvwrapper

echo "" >> ~/.bashrc
echo "if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    export WORKON_HOME=$HOME/.virtualenvs
    source /usr/local/bin/virtualenvwrapper.sh
fi" >> ~/.bashrc
source ~/.bashrc
echo
echo "--FINISHED!"
echo
echo "Installing additional modules..."
echo "--Whichcraft"
sudo pip install whichcraft
echo "--Gitpython"
sudo pip install gitpython
echo "--Progressbar2"
sudo pip install progressbar2
echo "--JSON"
sudo pip install simplejson
echo "--Commentjson"
sudo pip install commentjson
#echo "--PyYaml"
#sudo pip install pyyaml
echo


echo "***YOUR PYTHON DEV ENVIRONMENT IS NOW READY***"
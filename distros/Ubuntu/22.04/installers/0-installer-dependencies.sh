#! /usr/bin/env bash
#	Keeping it portable.
#	see:	https://www.cyberciti.biz/tips/finding-bash-perl-python-portably-using-env.html

echo    "installing essential dependencies - if not already preinstalled..."
sudo apt install dialog curl wget apt-transport-https
sudo apt install --fix-missing
sudo apt update
sudo apt dist-upgrade
sudo apt autoremove
sudo apt autoclean
# creating download cache folder
mkdir ./dl-cache/
echo  "download cache created"
sudo touch ./.dependencies-installed
echo  "marking dependencies as installed"
echo    "done!"

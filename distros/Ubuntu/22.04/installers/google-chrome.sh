#! /usr/bin/env bash
#	Keeping it portable.
#	see:	https://www.cyberciti.biz/tips/finding-bash-perl-python-portably-using-env.html

echo    "Installing Google Chrome..."
cd ./dl-cache/
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
# static download package from google
# see:  https://www.google.de/intl/en/chrome/
sudo dpkg -i ./google-chrome-stable_current_amd64.deb
cd ./..
sudo apt install --fix-missing
sudo apt update
sudo apt dist-upgrade
sudo apt autoremove
sudo apt autoclean
echo    "done!"
exit
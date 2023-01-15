#! /usr/bin/env bash
#	Keeping it portable.
#	see:	https://www.cyberciti.biz/tips/finding-bash-perl-python-portably-using-env.html

echo    "Installing VeraCrypt GUI..."
cd ./dl-cache/
wget    https://launchpad.net/veracrypt/trunk/1.25.9/+download/veracrypt-1.25.9-Ubuntu-22.04-amd64.deb
sudo dpkg -i ./veracrypt-1.25.9-Ubuntu-22.04-amd64.deb
cd ./..
sudo apt install --fix-missing
sudo apt update
sudo apt dist-upgrade
sudo apt autoremove
sudo apt autoclean
echo    "done!"
exit
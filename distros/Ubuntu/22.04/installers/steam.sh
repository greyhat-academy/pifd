#! /usr/bin/env bash
#	Keeping it portable.
#	see:	https://www.cyberciti.biz/tips/finding-bash-perl-python-portably-using-env.html

echo    "Installing Steam..."
cd ./dl-cache/
wget https://cdn.akamai.steamstatic.com/client/installer/steam.deb
# link to steam package.
# see:  https://store.steampowered.com/about/
sudo dpkg -i ./steam.deb
cd ./..
sudo apt install --fix-missing
sudo apt update
sudo apt dist-upgrade
sudo apt autoremove
sudo apt autoclean
echo    "done!"
exit
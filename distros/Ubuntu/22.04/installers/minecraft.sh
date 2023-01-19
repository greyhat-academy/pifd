#! /usr/bin/env bash
#	Keeping it portable.
#	see:	https://www.cyberciti.biz/tips/finding-bash-perl-python-portably-using-env.html

echo    "Installing Minecraft..."
cd ./dl-cache/
wget https://launcher.mojang.com/download/Minecraft.deb
# static download package from Mojang
# see:  https://www.minecraft.net/download
sudo dpkg -i ./Minecraft.deb
cd ./..
sudo apt install --fix-missing
sudo apt update
sudo apt dist-upgrade
sudo apt autoremove
sudo apt autoclean
echo    "done!"
exit

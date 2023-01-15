#! /usr/bin/env bash
#	Keeping it portable.
#	see:	https://www.cyberciti.biz/tips/finding-bash-perl-python-portably-using-env.html

echo    "installing essential dependencies..."
#   manual installer as per doucmentation
#   see:    https://retropie.org.uk/docs/Debian/
sudo apt update
sudo apt upgrade
sudo apt install -y git dialog unzip xmlstarlet
cd ./dl-cache/
git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git
cd ./RetroPie-Setup
sudo ./retropie_setup.sh
echo    "done!"
exit

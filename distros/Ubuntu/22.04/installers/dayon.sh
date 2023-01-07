#! /usr/bin/env bash
#	Keeping it portable.
#	see:	https://www.cyberciti.biz/tips/finding-bash-perl-python-portably-using-env.html

echo    "Installing Dayon! Remote Desktop Assistant..."
sudo add-apt-repository ppa:regal/dayon
sudo apt update
sudo apt install dayon
echo    "done!"
exit

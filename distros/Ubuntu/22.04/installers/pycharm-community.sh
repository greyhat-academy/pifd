#! /usr/bin/env bash
#	Keeping it portable.
#	see:	https://www.cyberciti.biz/tips/finding-bash-perl-python-portably-using-env.html

echo    "Installing PyCharm Community"
sudo apt install git
# git is a dependency of pyCharm, thus needs to be installed!
sudo snap install pycharm-community --classic
# snap install as per JetBrains recommendation
# see:  https://www.jetbrains.com/pycharm/download/#section=linux
echo  "done!"
exit
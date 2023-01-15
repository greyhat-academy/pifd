#! /usr/bin/env bash
#	Keeping it portable.
#	see:	https://www.cyberciti.biz/tips/finding-bash-perl-python-portably-using-env.html

echo    "Installing basic CLI utils..."
cd ./dl-cache/
wget https://download.virtualbox.org/virtualbox/7.0.4/virtualbox-7.0_7.0.4-154605~Ubuntu~jammy_amd64.deb
# static download link from Oracle
# see:  https://www.virtualbox.org/wiki/Linux_Downloads
wget https://download.virtualbox.org/virtualbox/7.0.4/Oracle_VM_VirtualBox_Extension_Pack-7.0.4.vbox-extpack
# static download link from Oracle
# see:  https://www.virtualbox.org/wiki/Downloads
cp ./Oracle_VM_VirtualBox_Extension_Pack-7.0.4.vbox-extpack $HOME/Downloads/
# copying the extension pack to /Downloads so that the user can easily add it.
sudo dpkg -i ./virtualbox-7.0_7.0.4-154605~Ubuntu~jammy_amd64.deb
sudo apt update
sudo apt dist-upgrade
sudo apt autoremove
sudo apt autoclean
cd ./..
echo  "done!"
echo  "NOTE: The VirtualBox Extension Pack must be manually added."
echo  "It has been copied to $HOME/Downloads already"
exit

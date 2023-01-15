#! /usr/bin/env bash
#	Keeping it portable.
#	see:	https://www.cyberciti.biz/tips/finding-bash-perl-python-portably-using-env.html

echo    "Installing Enpass..."

#   Installing Enpass
#   see:    https://www.enpass.io/support/kb/general/how-to-install-enpass-on-linux/
cd ./dl-cache/
sudo -i
echo "deb https://apt.enpass.io/ stable main" > \
/etc/apt/sources.list.d/enpass.list
wget -O - https://apt.enpass.io/keys/enpass-linux.key | tee /etc/apt/trusted.gpg.d/enpass.asc
cd ./..
sudo apt update
sudo apt dist-upgrade
sudo apt install enpass
echo "done!"
exit

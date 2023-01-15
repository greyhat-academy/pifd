#! /usr/bin/env bash
#	Keeping it portable.
#	see:	https://www.cyberciti.biz/tips/finding-bash-perl-python-portably-using-env.html

echo "Installing Balena Etcher..."
cd ./dl-cache/
# echo download script from their github
# see:  https://github.com/balena-io/etcher?d_id=3e47f587-779c-4c33-a94a-e4e7e3ec28a9&s_id=1673797886016#debian-and-ubuntu-based-package-repository-gnulinux-x86x64
curl -1sLf \
   'https://dl.cloudsmith.io/public/balena/etcher/setup.deb.sh' \
   | sudo -E bash
cd ./..
sudo apt-get update
sudo apt-get install balena-etcher-electron
echo "done!"
exit

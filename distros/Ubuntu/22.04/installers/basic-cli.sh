#! /usr/bin/env bash
#	Keeping it portable.
#	see:	https://www.cyberciti.biz/tips/finding-bash-perl-python-portably-using-env.html

echo    "Installing basic CLI utils..."

#   preinstall cleanup
sudo apt update
sudo apt dist-upgrade
sudo apt autoremove
sudo apt autoclean

#   installing basic packages
sudo apt install bzip2 tar lzma 7zip p7zip p7zip-full p7zip-rar pax btop git screenfetch neofetch screen tmux

#   postinstall-cleanup
sudo apt update
sudo apt dist-upgrade
sudo apt autoremove
sudo apt autoclean
echo    "done"
exit

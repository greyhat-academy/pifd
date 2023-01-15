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
sudo apt install remmina linphone quassel libreoffice firefox thunderbird enigmail pidgin pidgin-otr pidgin-privacy-please pidgin-awayonlock pidgin-themes pidgin-pack pidgin-extprefs pidgin-hotkeys pidgin-festival indicator-multiload menulibre gnome-tweaks

#   postinstall-cleanup
sudo apt update
sudo apt dist-upgrade
sudo apt autoremove
sudo apt autoclean
echo    "done"
exit

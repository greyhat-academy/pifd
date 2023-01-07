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
sudo apt install bzip2 tar lzma 7zip pax btop

#   installing pipx as dependency to zulip-terminal
#   see:    https://pypi.org/project/pipx/
sudo apt install python3 python3-pip
sudo python3 -m pip install --user pipx
sudo python3 -m pipx ensurepath
python3 -m pip install --user -U pipx
#   install zulip-terminal
#   see:    https://github.com/zulip/zulip-terminal
pip3 install zulip-term

#   postinstall-cleanup
sudo apt update
sudo apt dist-upgrade
sudo apt autoremove
sudo apt autoclean
echo    "done"
exit

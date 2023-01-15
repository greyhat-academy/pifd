#! /usr/bin/env bash
#	Keeping it portable.
#	see:	https://www.cyberciti.biz/tips/finding-bash-perl-python-portably-using-env.html

echo    "Installing zulip-terminal..."

#   installing pipx as dependency to zulip-terminal
#   see:    https://pypi.org/project/pipx/
sudo apt install python3 python3-pip python3.10-venv
sudo python3 -m pip install --user pipx
sudo python3 -m pipx ensurepath
python3 -m pip install --user -U pipx
sudo pipx upgrade-all
#   install zulip-terminal
#   see:    https://github.com/zulip/zulip-terminal
pip3 install zulip-term
echo  "done"
exit

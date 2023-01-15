#! /usr/bin/env bash
#	Keeping it portable.
#	see:	https://www.cyberciti.biz/tips/finding-bash-perl-python-portably-using-env.html

#   Installing Zulip
#   see:    https://zulip.com/help/desktop-app-install-guide
echo "Installing Zulip..."
cd ./dl-cache/
sudo curl -fL -o /etc/apt/trusted.gpg.d/zulip-desktop.asc \
    https://download.zulip.com/desktop/apt/zulip-desktop.asc
echo "deb https://download.zulip.com/desktop/apt stable main" | \
    sudo tee /etc/apt/sources.list.d/zulip-desktop.list
cd ./..
sudo apt update
sudo apt install zulip
echo "done!""
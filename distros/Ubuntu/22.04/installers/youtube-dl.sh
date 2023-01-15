#! /usr/bin/env bash
#	Keeping it portable.
#	see:	https://www.cyberciti.biz/tips/finding-bash-perl-python-portably-using-env.html

echo    "Installing youtube-dl..."

#   installing dependencies as dependency to zulip-terminal
sudo apt install python3 python3-pip python3.10-venv
#   install youtube-dl
#   see:    https://ytdl-org.github.io/youtube-dl/download.html
pip3 install --upgrade youtube_dl
echo  "done"
exit

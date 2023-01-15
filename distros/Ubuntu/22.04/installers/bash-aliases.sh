#! /usr/bin/env bash
#	Keeping it portable.
#	see:	https://www.cyberciti.biz/tips/finding-bash-perl-python-portably-using-env.html

echo    "Downloading bash aliases config..."
cd ./dl-cache/
https://raw.githubusercontent.com/kkarhan/misc-stuff/main/.bash_aliases
echo  "importing bash-aliases..."
cp ./.bash_aliases $HOME/
echo  "done!"
exit

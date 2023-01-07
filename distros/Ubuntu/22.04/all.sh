#! /usr/bin/env bash
#	Keeping it portable.
#	see:	https://www.cyberciti.biz/tips/finding-bash-perl-python-portably-using-env.html

echo    "Do you really want to apply all install scripts?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo "Installing..."; break;;
		No ) echo "ABORTED!"; exit;;
    esac
done
#   Yes/No security question

echo    "installing essential dependencies - if not already preinstalled..."
sudo apt install dialog curl wget
sudo apt install --fix-missing
sudo apt update
sudo apt dist-upgrade
sudo apt autoremove
sudo apt autoclean
echo    "done!"

#   Scan for all installers and run them one after the other...
mapfile -t my_array < <(ls ./installers/)
for i in "${my_array[@]}"
do
	echo    "running $i ..."
    sudo ./installers/$i
    echo    " next..."
done
echo    "completed!"
exit

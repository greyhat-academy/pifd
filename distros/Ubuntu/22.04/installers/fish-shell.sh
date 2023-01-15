#! /usr/bin/env bash
#	Keeping it portable.
#	see:	https://www.cyberciti.biz/tips/finding-bash-perl-python-portably-using-env.html

echo    "installing fish shell..."
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish
echo    "fish installed!"

# Selecting Shell
# see:  https://linuxhandbook.com/install-zsh/
USER=$(whoami)
echo  "Do you want to change fish as your default shell?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) sudo chsh -s /bin/fish $USER && echo "fish is set as default shell for $USER !" && break;;
		No ) echo "okay"; break;;
    esac
done

echo  "done!"
exit
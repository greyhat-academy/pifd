#! /usr/bin/env bash
#	Keeping it portable.
#	see:	https://www.cyberciti.biz/tips/finding-bash-perl-python-portably-using-env.html

echo  "installing zsh..."
sudo apt-get update
sudo apt-get install zsh
echo  "zsh installed!"

# Selecting Shell
# see:  https://linuxhandbook.com/install-zsh/
USER=$(whoami)
echo  "Do you want to change zsh as your default shell?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) sudo chsh -s /bin/zsh $USER && echo "zsh is set as default shell for $USER !" && break;;
		No ) echo "okay"; break;;
    esac
done

echo  "done!"
exit
#! /usr/bin/env bash
#	Keeping it portable.
#	see:	https://www.cyberciti.biz/tips/finding-bash-perl-python-portably-using-env.html

echo    "Ubuntu 22.04 Post-Installation Fast Deployment Tool"

echo  "checking dependencies..."
FILE=./installers/.dependencies-installed
if [ -f "$FILE" ]; then
    echo    "dependencies have been installed already... Skipping ahead..."
else
  echo  "dependencies don't seem to be installed... running installer..."
  ./installers/0-installer-dependencies.sh
fi

echo    "Loading the selection menu..."

cmd=(dialog --separate-output --checklist "Select which apps should be installed:" 22 76 16)
options=(1 "uninstall bloatware" on
         2 "uninstall insecure packages" on
         3 "Basic CLI Tools" on
         4 "Zulip" off
         5 "Enpass" on)
choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
clear
for choice in $choices
do
    case $choice in
        1)
            echo    "removing Bloatware..."
            ./installers/uninstall-bloatware.sh
            ;;
        2)
            echo    "uninstall insecure packages..."
            ./installers/uninstall-insecure.sh
            ;;
        3)
            echo    "installing basic CLI tools..."
            ./installers/basic-cli.sh
            ;;
        4)
            echo    "installing Zulip..."
            ./installers/zulip.sh
            ;;
        5)
            echo    "Installing Enpass..."
            ./installers/enpass.sh
            ;;
    esac
done

echo    "Thanks for using the Ubuntu 22.04 Post-Installation Fast Deployment Tool!"
echo    ""
echo    "Do you wish to reboot the system?"
#   reboot question

select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo "rebooting..."; break;;
		No ) echo "bye..."; exit;;
    esac
done

sudo reboot && exit

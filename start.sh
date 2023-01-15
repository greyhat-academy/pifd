#! /usr/bin/env bash
#	Keeping it portable.
#	see:	https://www.cyberciti.biz/tips/finding-bash-perl-python-portably-using-env.html

#   Check for Distro & Version
#   See:    https://unix.stackexchange.com/a/6348
#   See:    https://unix.stackexchange.com/questions/6345/how-can-i-get-distribution-name-and-version-number-in-a-simple-shell-script#6348

if [ -f /etc/os-release ]; then
    # freedesktop.org and systemd
    . /etc/os-release
    OS=$NAME
    VER=$VERSION_ID
elif type lsb_release >/dev/null 2>&1; then
    # linuxbase.org
    OS=$(lsb_release -si)
    VER=$(lsb_release -sr)
elif [ -f /etc/lsb-release ]; then
    # For some versions of Debian/Ubuntu without lsb_release command
    . /etc/lsb-release
    OS=$DISTRIB_ID
    VER=$DISTRIB_RELEASE
else
    # Fall back to uname, e.g. "Linux <version>", also works for BSD, etc.
    OS=$(uname -s)
    VER=$(uname -r)
fi

echo    "Distribution detected:"
echo    "$OS"
echo    "$VER"


#   Confirming Support for Distro by checking if distro support is offered.
##  See:    https://linuxize.com/post/bash-check-if-file-exists/

FILE=./$OS/$VER/distro.is.supported.check
if [ -f "$FILE" ]; then
    echo    "Distribution $OS $VER is supported."
    #   Switching to directory for distro-specific scripts and starting the script from there.
    cd ./$OS/$VER/
    ./pifd.sh
    echo    "setup completed!"
    exit
else
    echo    "$OS $VER is unsupported!"
    echo    "Please report this back as issue at: https://github.com/greyhat-academy/pifd/issues"
    echo    "You're also happily invited to add support yourself and contribute it as a pull request: https://github.com/greyhat-academy/pifd/pulls"
    echo    "To prevent damages to your installation, this script will now terminate."
    echo    ""
    echo    "if detection failed and/or you want to explicitly run said scripts manually for a distro, please open the relevant folder in ./distros/. "
    echo    "i.e. ./distros/Ubuntu/22.04/ and run ./pifd.sh inside it"
    exit
fi
exit

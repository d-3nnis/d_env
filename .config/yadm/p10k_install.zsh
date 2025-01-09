#!/usr/bin/env zsh

set -e
echo $ZSH_CUSTOM
echo "^^^^"
ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
if [ ! -d "${ZSH_CUSTOM}" ]; then
    printf "ZSH_CUSTOM not set, is omz missing?"
    exit 1
fi

# Check if Powerlevel10k is installed
if [ ! -d "${ZSH_CUSTOM}/themes/powerlevel10k" ]; then
    printf "Powerlevel10k not installed, initiating installation..."

    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    ret=$?
    if [ $ret -ne 0 ]; then
        printf "Failed to install powerlevel10k"
        exit $ret
    fi
    # Install Powerlevel10k
else
    printf "Powerlevel10k is already installed."
fi

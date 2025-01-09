#!/usr/bin/env zsh

ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
if [ ! -d "${ZSH_CUSTOM}" ]; then
    printf "ZSH_CUSTOM not set, is omz missing?\n"
    exit 1
fi

# if zsh-autosuggestions is already installed, skip
if [ ! -d ${ZSH_CUSTOM}/plugins/zsh-autosuggestions ]; then
    echo "zsh-autosuggestions is already installed"
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM}/plugins/zsh-autosuggestions
    ret=$?
    if [ $ret -ne 0 ]; then
        echo "Failed to install zsh-autosuggestions"
        exit $ret
    fi
fi

if [ ! -d ${ZSH_CUSTOM}/plugins/zsh-vi-mode ]; then
    git clone https://github.com/jeffreytse/zsh-vi-mode $ZSH_CUSTOM/plugins/zsh-vi-mode
    ret=$?
    if [ $ret -ne 0 ]; then
        echo "Failed to install zsh-vi-mode"
        exit $ret
    fi
fi

#!/usr/bin/env zsh

set -e

# Check if Oh My Zsh is installed
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Oh My Zsh not installed, initiating installation..."

    # Install Oh My Zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
    ret=$?
    if [ $? -ne 0 ]; then
        echo "Failed to install Oh My Zsh"
        exit 1
    fi
else
    echo "Oh My Zsh is already installed."
fi

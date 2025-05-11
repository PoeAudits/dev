#!/usr/bin/env bash

# Update package lists
sudo apt-get update

# Install Zsh
sudo apt-get install zsh -y

# Check if Zsh is the default shell
if [[ $(basename $SHELL) != "zsh" ]]; then
    chsh -s $(which zsh)
fi

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install dependencies
sudo apt-get install -y build-essential curl file git 
# Unix Tools
sudo apt-get install -y jq xclip parallel ripgrep
# Window Manager
sudo apt-get install -y awesome

# # Initialize Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#
# # Add Homebrew to PATH
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.bashrc
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zshrc
source ~/.bashrc
#
# # Install packages
brew install gh fzf gcc jq medusa node ripgrep solc-select tmux 
#
# curl -L https://foundry.paradigm.xyz | bash
# foundryup
#

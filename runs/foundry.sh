#!/usr/bin/env bash

curl -L https://foundry.paradigm.xyz | zsh
echo 'export PATH="$PATH:$HOME/.foundry/bin"' >> ~/.zshrc
. $HOME/.foundry/bin/foundryup



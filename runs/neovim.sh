#!/usr/bin/env bash

git clone -b v0.11.0 https://github.com/neovim/neovim.git $HOME/Tom/neovim
sudo apt install cmake gettext lua5.1 liblua5.1-0-dev

cd $HOME/Tom/neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

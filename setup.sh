#!/bin/bash
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
sudo apt-get install python-dev python-pip python3-dev python3-pip
sudo apt install python3-neovim

mkdir $HOME/.config
mkdir $HOME/.config/nvim
mkdir $HOME/.config/nvim/colors
mkdir $HOME/.config/nvim/plugged

sudo cp gdrive /usr/bin/

ln -s $HOME/server-setup-editor/init.vim $HOME/.config/nvim/init.vim


nvim -c PlugInstall

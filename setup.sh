#!/bin/bash

sudo apt install vim-gtk
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sudo apt install byobu
set -g default-terminal "xterm-256color"

{
	echo "'set -g default-terminal ${TERM}'" >> "$HOME/.byobu/.tmux.conf"
} ||
{
	echo "'set -g default-terminal ${TERM}'" >> "$HOME/.config/byobu/.tmux.conf"

}
mkdir $HOME/.vim/colors
wget https://raw.githubusercontent.com/blueshirts/darcula/master/colors/darcula.vim -P $HOME/.vim/colors
ln -s $HOME/server-setup-editor/.vimrc ~/.vimrc
sudo cp gdrive /usr/bin/
vim -c PluginInstall

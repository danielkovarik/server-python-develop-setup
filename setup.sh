#!/bin/bash

sudo apt install -y vim-gtk
echo 'Creating vim dir'
mkdir ${HOME}/.vim/
echo 'Creating bundle dir'
mkdir ${HOME}/.vim/bundle/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

{
	echo "set -g default-terminal '${TERM}'" >> "$HOME/.byobu/.tmux.conf"
} ||
{
	echo "set -g default-terminal '${TERM}'" >> "$HOME/.config/byobu/.tmux.conf"

}
sudo apt install -y byobu
mkdir $HOME/.vim/colors
wget https://raw.githubusercontent.com/blueshirts/darcula/master/colors/darcula.vim -P $HOME/.vim/colors
ln -s $HOME/server-setup-editor/.vimrc $HOME/.vimrc
sudo cp gdrive /usr/bin/
vim -c PluginInstall

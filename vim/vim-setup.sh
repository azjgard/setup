#!/bin/bash

if [ $(id -u) = 0 ]; then
  echo "This script's success is dependent on it not being run as root."
  echo "Please try again."
  exit 1;
fi

sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:neovim-ppa/stable -y
sudo apt-get update

sudo apt-get install python-dev python-pip python3-dev python3-pip -y

sudo apt-get install neovim -y
sudo apt-get install python-neovim -y
sudo apt-get install python3-neovim -y

echo "alias vi=\"neovim \\\"$1\\\"\"" >> ~/.bashrc
source ~/.bashrc

[ ! -e ~/.vimrc ] || cp ~/.vimrc ~/.vimrc-backup
[ ! -e ~/.vimrc ] || rm ~/.vimrc

mkdir -p ~/.config/nvim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s ~/setup/vim/.vimrc ~/.vimrc
ln -s ~/setup/vim/.vimrc ~/.config/nvim/init.vim

vi +PlugInstall +qa!

echo "Remote Editing Environment successfully configured!"

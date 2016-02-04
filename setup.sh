#!/bin/bash

cd ~
#install git if not present
echo "Installing git if uninstalled..."

#Clone dotfiles individually
echo "Cloning arntzy's dotfiles to home directory..."
echo "Cloning .tmux..."
git clone --recursive https://github.com/arntzy/.tmux.git
echo "Cloning .vim..."
git clone --recursive https://github.com/arntzy/.vim.git

#Create symlinks to dotfiles
echo "Creating symlinks to dotfiles..."
ln -s .vim/.vimrc .vimrc
ln -s .tmux/.tmux.conf .tmux.conf
ln -s .tmux/.tmux.conf.local .tmux.conf.local

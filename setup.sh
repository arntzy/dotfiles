#!/bin/bash

cd ~
#Check for necessary installations
echo "Checking for necessary installations..."
type git >/dev/null 2>&1 || { echo >&2 "git is not installed.  Aborting."; exit 1; }
type tmux >/dev/null 2>&1 || { echo >&2 "tmux is not installed.  Aborting."; exit 1; }
type vim >/dev/null 2>&1 || { echo >&2 "vim is not installed.  Aborting."; exit 1; }
type nvim >/dev/null 2>&1 || { echo >&2 "nvim is not installed.  Aborting."; exit 1; }

#Clone dotfiles individually
echo "Cloning arntzy's dotfiles to home directory..."
echo "Cloning .tmux/..."
git clone --recursive https://github.com/arntzy/.tmux.git
echo "Cloning .vim/..."
git clone https://github.com/arntzy/.vim.git
echo "Cloning git/..."
git clone https://github.com/arntzy/git.git

#Create symlinks to dotfiles
echo "Creating symlinks to dotfiles..."
ln -sf ~/.vim/.vimrc ~/.vimrc
ln -sf ~/.vim/init.vim ~/.config/nvim/init.vim
ln -sf ~/.tmux/.tmux.conf ~/.tmux.conf
ln -sf ~/.tmux/.tmux.conf.local ~/.tmux.conf.local
ln -sf ~/git/.gitconfig ~
ln -sf ~/git/.gitignore_global ~
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.bash_aliases ~/.bash_aliases

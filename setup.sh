#!/bin/bash

cd ~
#Check for necessary installations
echo "Checking for necessary installations..."
type git >/dev/null 2>&1 || { echo >&2 "git is not installed.  Aborting."; exit 1; }
type tmux >/dev/null 2>&1 || { echo >&2 "tmux is not installed.  Aborting."; exit 1; }
type vim >/dev/null 2>&1 || { echo >&2 "vim is not installed.  Aborting."; exit 1; }

#Clone dotfiles individually
echo "Cloning arntzy's dotfiles to home directory..."
echo "Cloning .tmux/..."
git clone --recursive https://github.com/arntzy/.tmux.git
echo "Cloning .vim/..."
git clone --recursive https://github.com/arntzy/.vim.git
echo "Cloning git/..."
git clone https://github.com/arntzy/git.git

#Create symlinks to dotfiles
echo "Creating symlinks to dotfiles..."
ln -sf .vim/.vimrc .vimrc
ln -sf .tmux/.tmux.conf .tmux.conf
ln -sf .tmux/.tmux.conf.local .tmux.conf.local
ln -sf git/.gitconfig ~
ln -sf git/.gitignore_global ~
ln -sf dotfiles/.bashrc .bashrc

#Potentially useful leftover files
#command -v foo >/dev/null 2>&1 || { echo >&2 "I require foo but it's not installed.  Aborting."; exit 1; }
#hash foo 2>/dev/null || { echo >&2 "I require foo but it's not installed.  Aborting."; exit 1; }

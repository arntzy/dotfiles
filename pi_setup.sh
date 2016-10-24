#!/bin/bash

cd ~

#Install Node
wget https://nodejs.org/dist/latest-v6.x/node-v6.9.1-linux-armv7l.tar.gz
tar -xzf node-v6.9.1-linux-armv7l.tar.gz
cd node-v6.9.1-linux-armv7l
sudo cp -R * /usr/local/

#Check for necessary installations
echo "Checking for necessary installations..."
type git >/dev/null 2>&1 || { echo >&2 "git is not installed.  Aborting."; exit 1; }
type vim >/dev/null 2>&1 || { echo >&2 "vim is not installed.  Aborting."; exit 1; }

#Clone dotfiles individually
echo "Cloning arntzy's dotfiles to home directory..."
echo "Cloning arntzy's .vim/..."
git clone --recursive https://github.com/arntzy/.vim.git
echo "Cloning arntzy's git/..."
git clone https://github.com/arntzy/git.git

#Create symlinks to dotfiles
echo "Creating symlinks to dotfiles..."
ln -sf .vim/.vimrc .vimrc
ln -sf git/.gitconfig ~
ln -sf git/.gitignore_global ~
ln -sf dotfiles/.bashrc .bashrc

#Cleanup
echo "Removing Oblique vim plugin..."
rm -rf ~/.vim/bundle/oblique/
echo "Removing Ultisnips vim plugin..."
rm -rf ~/.vim/bundle/ultisnips/
echo "Commenting out colorscheme in .vimrc..."
sed -i '18 s/^/"/' ~/.vimrc

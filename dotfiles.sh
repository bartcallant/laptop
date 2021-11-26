#!/bin/bash

########## Variables
dir=~/laptop                            # dotfiles directory
olddir=~/dotfiles_old                   # old dotfiles backup directory
files=".zshrc .aliases .functions .npmrc .gitconfig .gitconfig-personal .gitconfig-intocare"      # list of files/folders to symlink in homedir
##########

echo "Started: Setting up dotfiles..."

# create dotfiles_old in homedir
mkdir -p $olddir

# change to the dotfiles directory
cd $dir

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    mv ~/$file ~/dotfiles_old/
    ln -s $dir/$file ~/$file
done

echo "Finished: Setting up dotfiles"

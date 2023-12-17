#!/bin/bash

echo "Started: Cloning `bartcallant/laptop` repository..."
git clone https://github.com/bartcallant/laptop ~/laptop
echo "Finished: Cloning `bartcallant/laptop` repository"

cd ~/laptop

echo "Started: Install"
sudo sh linux/apt.sh
echo "Finished: Install"

sh homebrew.sh
sh oh-my-zsh.sh
sh dotfiles.sh
sh n-install.sh
sh projects.sh

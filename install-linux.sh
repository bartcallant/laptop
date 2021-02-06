#!/bin/bash

echo "Started: Cloning `bartcallant/laptop` repository..."
git clone https://github.com/bartcallant/laptop ~/laptop
echo "Finished: Cloning `bartcallant/laptop` repository"

# cd ~/laptop

echo "Started: Install"
sudo sh linux/apt.sh
sh linux/flatpak.sh
sudo sh linux/docker-install.sh
sh linux/n-install.sh
echo "Finished: Install"

sh oh-my-zsh.sh
sh dotfiles.sh
sh docker.sh
sh projects.sh

# dconf dump /org/gnome/terminal/legacy/profiles:/
# dconf write /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/font  "'Roboto Mono Light for Powerline 11'"


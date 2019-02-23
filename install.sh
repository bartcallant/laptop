#!/bin/bash

echo "Started: Installing Xcode Command Line Tools..."
xcode-select --install
read -n 1 -s -p "After installtion is complete, press any key to continue"
echo "Finished: Installing Xcode Command Line Tools"

echo "Started: Cloning `bartcallant/laptop` repository..."
git clone https://github.com/bartcallant/laptop ~/laptop
echo "Finished: Cloning `bartcallant/laptop` repository"

cd ~/laptop

sh Homebrew.sh
sh oh-my-zsh.sh
sh dotfiles.sh
sh docker.sh
sh osx.sh
sh terminal.sh
sh projects.sh

# Set gitconfig

# OS X Restart setting restore save state FALSE
echo "Restarting system to make sure everything is set and loaded correctly..."
osascript -e 'tell app "System Events" to restart with state saving preference'

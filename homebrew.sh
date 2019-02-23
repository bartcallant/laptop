#!/bin/bash

echo "Started: Installing Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "Finished: Installing Homebrew"

echo "Started: Installing everything from Brewfile..."
brew bundle
echo "Finished: Installing everything from Brewfile"

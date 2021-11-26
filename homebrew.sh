#!/bin/bash

echo "Started: Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "Finished: Installing Homebrew"

echo "Started: Installing everything from Brewfile..."
brew bundle
echo "Finished: Installing everything from Brewfile"

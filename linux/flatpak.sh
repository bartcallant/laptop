#!/bin/bash

echo "Started: Installing GUI tools with flatpak..."
flatpak install flathub com.slack.Slack
flatpak install flathub com.spotify.Client
flatpak install flathub com.visualstudio.code
flatpak install flathub com.uploadedlobster.peek
flatpak install flathub org.flameshot.Flameshot
echo "Finished: Installing GUI tools with flatpak"

#!/usr/bin/env bash
date "+Last refreshed: %H:%M:%S"
# Install updates
yay -Syu

# Exit
echo
echo "Update Complete! Press [ENTER] to close."
read -r

# Reload Waybar
pkill -RTMIN+8 waybar

#!/usr/bin/env bash

# Install updates
kitty -e bash -c "yay -Syu; echo 'Press [ENTER] to close.'; read"

# Reload Waybar
pkill -12 waybar

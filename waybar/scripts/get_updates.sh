#!/usr/bin/env bash
# Show available updates in waybar

# get updates
update_pacman=$(checkupdates | wc -l )
update_aur=$(yay -Qum | wc -l)
total_updates=$((update_aur+update_pacman))

# output total updates
printf '{"text" : "%s", "tooltip": "Aur: %s | Pacman: %s", }' "$total_updates" "$update_aur" "$update_pacman" 

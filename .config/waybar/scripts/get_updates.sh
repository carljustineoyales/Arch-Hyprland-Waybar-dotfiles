#!/usr/bin/env bash
# Show available updates in waybar

echo '{"text": "Updating"}'

# get updates
updates=()

# AUR updates
while IFS= read -r line; do
  #extract package name, current version, latest version
  pkg=$(echo "$line" | awk '{print $1}')
  current=$(echo "$line" | awk '{print $2}')
  latest=$(echo "$line" | awk '{print $4}')

  # Store as a string in the array (you can format as you like)
  updates+=("$pkg: $current -> $latest")
done < <(yay -Qua)

# Pacman updates
while IFS= read -r line; do
  #extract package name, current version, latest version
  pkg=$(echo "$line" | awk '{print $1}')
  current=$(echo "$line" | awk '{print $2}')
  latest=$(echo "$line" | awk '{print $4}')

  # Store as a string in the array (you can format as you like)
  updates+=("$pkg: $current -> $latest")
done < <(checkupdates)

# Join all updates into a single string for tooltip
tooltip=""
for u in "${updates[@]}"; do
    tooltip+="$u\\n"   # Append literal \n after each element
done
# Remove trailing \n (optional)
tooltip=${tooltip%\\n}
total_updates=${#updates[@]}
# output total updates
# printf '{"text" : "%s", "tooltip": "Aur: %s | Pacman: %s", }' "$total_updates" "$update_aur" "$update_pacman" 
echo "{\"text\": \"$total_updates\", \"tooltip\": \"$tooltip\"}"
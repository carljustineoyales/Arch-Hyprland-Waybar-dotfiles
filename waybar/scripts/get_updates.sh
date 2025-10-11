#!/usr/bin/env bash
# Show available updates in waybar

echo '{"text": "Updating"}'

# get updates
updates=()

# serialize each packages in the update
while IFS= read -r line; do
  #extract package name, current version, latest version
  pkg=$(echo "$line" | awk '{print $1}')
  current=$(echo "$line" | awk '{print $2}')
  latest=$(echo "$line" | awk '{print $4}')

  # Store as a string in the array (you can format as you like)
  updates+=("$pkg: $current -> $latest")
done < <(yay -Qua)

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
printf '{"text" : "%s", "tooltip": "%s", }' "$total_updates" "$tooltip" 

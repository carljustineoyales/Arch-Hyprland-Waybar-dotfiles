#!/usr/bin/env bash
# needs community/pacman-contrib

arch=$(checkupdates | wc -l)
aur=$(yay -Qua | wc -l)

total=$((aur + arch))
text="$total"
tooltip="Arch: $arch | Aur: $aur"

echo "{\"text\": \"$text\", \"tooltip\": \"$tooltip\"}"
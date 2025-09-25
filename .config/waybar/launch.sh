#!/usr/bin/env bash

killall waybar
echo "waybar process killed"

waybar &
echo "waybar process started"

#!/usr/bin/env bash

# Directory for saving screenshots
SAVE_DIR="$HOME/Pictures/Screenshots"
mkdir -p "$SAVE_DIR"

# Generate timestamped filename
FILENAME="$(date +'%Y-%m-%d_%H-%M-%S').png"
FILEPATH="$SAVE_DIR/$FILENAME"

# Determine mode
MODE="$1"

case "$MODE" in
  "desktop")
    grim "$FILEPATH"
    notify-send "📸 Screenshot Saved" "Full desktop captured and saved to $FILEPATH"
    ;;

  "monitor")
    MONITOR=$(hyprctl monitors -j | jq -r '.[] | select(.focused==true).name')
    grim -o "$MONITOR" "$FILEPATH"
    notify-send "🖥️ Screenshot Saved" "Monitor '$MONITOR' captured and saved to $FILEPATH"
    ;;

  "region")
    TMPFILE=$(mktemp /tmp/screenshot-XXXXXX.png)
    grim -g "$(slurp)" "$TMPFILE"
    swappy -f "$TMPFILE" -o "$FILEPATH"
    rm "$TMPFILE"
    notify-send "✏️ Screenshot Saved" "Region captured and saved → $FILEPATH"
    ;;


  *)
    notify-send "⚠️ Invalid Mode" "Usage: screenshot.sh [desktop|monitor|region]"
    ;;
esac
# #!/usr/bin/env bash

# COUNTER_FILE="/tmp/waybar_counter"

# # Initialize the counter if missing
# if [ ! -f "$COUNTER_FILE" ]; then
#     echo 0 > "$COUNTER_FILE"
# fi

# # Read, increment, and save
# value=$(<"$COUNTER_FILE")
# ((value++))
# echo "$value" > "$COUNTER_FILE"

# # Proper Waybar JSON output
# echo "{\"text\": \"$value\", \"tooltip\": \"Counter: $value\", \"class\": \"counter\"}"
#!/usr/bin/env bash
echo "{\"text\": \"$(date +%S)\"}"

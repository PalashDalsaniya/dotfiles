#!/bin/bash
# Find the internal display name dynamically (e.g., eDP-1 or eDP-2)
INTERNAL_DISPLAY=$(kscreen-doctor -o | grep -o 'eDP-[0-9]*' | head -n 1)

# Apply the mode to that specific display
kscreen-doctor output.$INTERNAL_DISPLAY.mode.2880x1800@60

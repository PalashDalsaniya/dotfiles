#!/bin/bash
# Find the internal display name dynamically
INTERNAL_DISPLAY=$(kscreen-doctor -o | grep -o 'eDP-[0-9]*' | head -n 1)

# Apply the MAX refresh rate (Adjust 120 to your specific max, e.g., 120, 144, or 165)
kscreen-doctor output.$INTERNAL_DISPLAY.mode.2880x1800@120

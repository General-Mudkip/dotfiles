#!/bin/bash
# Save as ~/.config/hypr/scripts/hyprshot-fixed.sh

# 1. Set PATH to include your user's bin directory
export PATH="$HOME/.local/bin:$PATH"

# 2. Get the Hyprland instance signature from the running process
export $(grep -z HYPRLAND_INSTANCE_SIGNATURE /proc/$(pgrep -x Hyprland)/environ | tr '\0' ' ')

# 3. Use the full path to hyprshot to be 100% sure
/home/bence/.local/bin/hyprshot "$@" -m output

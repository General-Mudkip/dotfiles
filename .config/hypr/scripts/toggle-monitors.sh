#!/bin/bash

while true; do
    # Check if HDMI is present
    HAS_HDMI=$(hyprctl monitors | grep -q "HDMI-A-1" && echo 1 || echo 0)
    # Check if eDP is present
    HAS_EDP=$(hyprctl monitors | grep -q "eDP-1" && echo 1 || echo 0)

    # If HDMI is not present, try to enable it (in case it was just plugged in)
    if [ "$HAS_HDMI" -eq 0 ]; then
        hyprctl keyword monitor "HDMI-A-1,preferred,auto,1"
        sleep 1  # Give Hyprland a moment to process
        HAS_HDMI=$(hyprctl monitors | grep -q "HDMI-A-1" && echo 1 || echo 0)
    fi

    # If HDMI is present, disable eDP
    if [ "$HAS_HDMI" -eq 1 ]; then
        hyprctl keyword monitor "eDP-1,disable"
    fi

    # If HDMI is not present, enable eDP and disable HDMI
    if [ "$HAS_HDMI" -eq 0 ]; then
        hyprctl keyword monitor "eDP-1,preferred,auto,1"
        hyprctl keyword monitor "HDMI-A-1,disable"
    fi

    sleep 2
done

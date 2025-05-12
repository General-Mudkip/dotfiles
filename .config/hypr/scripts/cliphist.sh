#!/bin/bash
cliphist list | wofi -S dmenu -n | cliphist decode | wl-copy

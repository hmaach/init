#!/bin/zsh

xrandr --newmode "1920x1080_75.00" 220.75  1920 2064 2264 2608  1080 1083 1088 1130 -hsync +vsync
xrandr --addmode HDMI-1 "1920x1080_75.00"
echo "After executing the script head to settings and you will find the new refresh rate"
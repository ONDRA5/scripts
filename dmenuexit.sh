#!/bin/bash
declare -A exit=(
["lock"]="lock"
["shutdown"]="shutdown"
["reboot"]="reboot"
["suspend"]="suspend"
["logout"]="logout"
)
choice=$(printf "%s\n" "${!exit[@]}" | dmenu -i -p exit)
i3exit "${exit[$choice]}"

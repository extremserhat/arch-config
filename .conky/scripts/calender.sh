#!/bin/bash
# Get the next calendar event
next_event=$(calendar --format='%a %b %d, %I:%M %p' --get-occurrences='now' | head -n1)

# Output the next event in Conky format
echo "${font DejaVu Sans Mono:size=10}${color white}Nächster Kalendereintrag: ${color orange}${execpi 300 echo \"$next_event\"}${font}"


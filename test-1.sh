#!/bin/bash

echo "Please enter the hour of the day (in 24-hour format):"
read hour

if ! [[ $hour =~ ^([01][0-9]|2[0-3]):[0-5][0-9]$ ]]; then
    echo "Invalid input format. Please enter a valid hour in 24-hour format."
    exit 1
fi

hour_only=$(echo $hour | cut -d':' -f1)

if (( hour_only >= 1 && hour_only <= 6 )); then
    echo "Early Morning"
elif (( hour_only >= 7 && hour_only <= 12 )); then
    echo "Morning"
elif (( hour_only >= 13 && hour_only <= 18 )); then
    echo "Afternoon"
elif (( hour_only >= 19 && hour_only <= 23 )); then
    echo "Late Night"
else
    echo "Invalid hour. Please enter a valid hour between 00:00 and 23:59."
fi

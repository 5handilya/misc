#!/bin/bash

## Script to enable / disable spotlight indexing when plugged in / on battery power

# Add the following line to your cron file ($ crontab -e):
# * * * * * /path/to/autospotlight.sh
# (above line makes it run every minute)
# To check if the script is working, search for "AutoSpotlight" in Console.app

power_source=$(/usr/bin/pmset -g ps)

if [[ $power_source == *"Battery Power"* ]]; then
    logger "AutoSpotlight: Disabling indexing, device is on battery power"
    sudo mdutil -a -i off
else
    logger "AutoSpotlight: Enabling indexing, device is plugged in and charging"
    sudo mdutil -a -i on
fi

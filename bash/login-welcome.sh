#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
#by usimng the environmemnt variable, get the username and hostname dynamically.
useri="$USER"
hostname="$(hostname)"
#from date command, getting the date and whhat day of the week is.
day=$(date +%A)
currenttime=$(date +%I:%M\ %p) # Date printing
###############
# Main        ###test the day name and printing any message according to the day by using if& else command.
###############
if [ "$day" = Monday ];
then
csay="Welcome to planet $hostname, great $useri!"
elif [ "$day" = Tuesday ];
then
csay="Welcome to planet $hostname, hacker $useri!"
elif [ "$day" = Wednesday ];
then
csay="Welcome to planet $hostname, chicken $useri!"
elif [ "$day" = Thursday ];
then
csay="Welcome to planet $hostname, network architect $useri!"
elif [ "$day" = Friday ];
then
csay="Welcome to planet $hostname, support rep. $useri!"
elif [ "$day" = Saturday ];
then
csay="Welcome to planet $hostname, gray-hat hacker $useri!"
else
csay="Welcome to planet $hostname, co-ordinator $useri!"
fi
cowsay "$csay It is $currenttime on $day ."

#!/bin/bash

: << GOAL
Write a shell script that asks the user for the number 
of lines they would like to display from the /etc/passwd 
file and display those lines.
GOAL

read -p "How many lines of /etc/passwd would you like to see? " NUM
echo "${NUM}"

LINE_NUM=1
while [ "$LINE_NUM" -le "$NUM" ]
do
    read LINE
    echo "${LINE_NUM}: ${LINE}"
    (( LINE_NUM++ ))
done < /etc/passwd
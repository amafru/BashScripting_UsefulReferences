#!/bin/bash

: << COMMENT
====Exercise 1:====

1) Write a shell script that displays one random number to the 
screen and also generates a syslog message with that random 
number. Use the "user" facility and the "info" facility for 
your messages.
COMMENT

NUMBER=$((1 + $RANDOM % 10))
echo $NUMBER

logger -t 8_exercises.sh \
-s \
-p user.info \
"The generated random number is: $NUMBER"

#!/bin/bash

# Exercises 1 to 3
HOST=$(hostname)

echo "This script is running on ${HOST} where ${HOST} is the output of the 'hostname' command"


# Exercise4: Check if /etc/shadow exists and whether we can write to it

if [ -e /etc/shadow ]
then
  echo "Shadow passwords are enabled."

    if [ -w /etc/shadow ]
    then
      echo "You have permissions to edit /etc/shadow."
    else
      echo "You do NOT have permissions to edit /etc/shadow."
    fi
fi

# Exercise 5
for word in man bear pig dog cat sheep
do
  echo $word
done

#Exercise6

read -p "Enter the name for a file or directory: " name

if [ -f $name ]
then
  echo "${name} is a regular file"
elif [ -d $name ]
then
  echo "${name} is directory"
fi

ls -l "$name"

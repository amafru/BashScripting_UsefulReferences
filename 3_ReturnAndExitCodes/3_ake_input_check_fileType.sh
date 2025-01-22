#!/bin/bash

read -p "Enter file name to check for type: " FILE_NAME

if [ -d $FILE_NAME ]
then
    echo "$FILE_NAME is a directory"
    exit 1
elif [ -f $FILE_NAME ]
then
    echo "$FILE_NAME is a regular file"
    exit 0
else
    echo "$FILE_NAME is some other file type"
    exit 2
fi
#!/bin/bash

: << COMMENT
====Exercise 1:====

#Write a shell script that consists of a function that display the number 
of files in the present working directory. Name this function "file_count" 
and call it in your script. If you use a variable in your function, remember 
to make it a local variable.
COMMENT

function count_files(){
    local FILE_COUNT=$(ls -l | wc -l)
    echo "File count in current working directory is: $FILE_COUNT"
}

count_files

: << COMMENT
=====Exercise 2:=====

Modify the script from the previous exercise. 
Make the "file_count" function accept a directory as an argument. 
Next have the function display the name of the directory followed by a colon. 
Finally, display the number of files to the screen on the next line. 
Call the function three times. 
First, on the "/etc" directory, 
next on the "/var" directory 
and finally on the "/usr/bin" directory.
COMMENT

echo "*******************DIVIDER**********************"

DIR_1="/etc"
DIR_2="/var"
DIR_3="/usr/bin"

function count_files_2(){
    local FILE_COUNT=$(ls -l $1 | wc -l)
    echo "File count of the $1 directory is: $FILE_COUNT"
}

count_files_2 $DIR_1
count_files_2 $DIR_2
count_files_2 $DIR_3

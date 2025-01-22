#!/bin/bash

DATE=$(date +"%Y%m%d")

# Ask the user for file extensions to rename
read -p "Please enter a file extension: " FILE_EXTENSIONS

read -p "Please enter a file prefix (Press ENTER for date today): " FILE_PREFIX
# Set default value for FILE_PREFIX if user simply presses enter
DEFAULT_PREFIX="${FILE_PREFIX:-$(date +'%Y%m%d')}"

shopt -s nullglob
for file in *.jpg; 
do
  if [[ -n "$FILE_PREFIX" ]];
  then
    echo "ORGININAL_FILE_NAME: $file"
    echo "Updating $file to ${FILE_PREFIX}_${file} >>"
    mv "$file" "${FILE_PREFIX}_${file}"
    echo "Done"
    echo "==========================="
  else
    echo "ORGININAL_FILE_NAME: $file"
    echo "Updating $file to ${DEFAULT_PREFIX}_${file} >>"
    mv "$file" "${DEFAULT_PREFIX}_${file}"
    echo "Done"
    echo "==========================="
  fi
done





#!/bin/bash

DATE=$(date +"%Y%m%d")

shopt -s nullglob
for file in *.jpg; 
do
  echo "ORGININAL_FILE_NAME: $file"
  echo "Updating file name >>"
  mv "$file" "${DATE}${file}"
  echo "NEW_FILE_NAME: ${DATE}${file}"
  echo "==========================="
done
#!/bin/bash

echo "This script will exit with a 0 exit status."

EXIT_CODE=$?

if [ $EXIT_CODE -eq "0" ]
then
    echo "Exit code matched expected result"
else
    echo "Exit code as non-zero"
fi
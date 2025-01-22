#!/bin/bash

INTERPRETER='bash'
SERVER_NAME=$(hostname)
NUM_1=3
NUM_2=1
FRUIT="apples oranges pears"

echo "This is a shell script"

echo "The interpreter in use (name retrieved from variable) is $INTERPRETER."

echo "I could also manipulate that variable value by typing:>> I am ${INTERPRETER}ing on my keyboard <<"

echo "*******NEW SECTION: Passing Output of a command to a variable as value*******"
echo "The name of the server/computer processing this request is (hostname): ${SERVER_NAME}" 

echo "*******NEW SECTION: Conditional Statements*******"
if [ "$NUM_1" -gt "$NUM_2" ]
then
    echo "NUM_1 is greater than NUM_2"
else
    echo "NUM_1 is lower than NUM_2"
fi

echo "*******NEW SECTION: Loops*******"
for item in $FRUIT
do
    echo $item
done

echo "*******NEW SECTION: Using Exit Codes*******"
HOST="google.co.uk"

ping -c 1 $HOST

if [ "$?" -eq "5" ]
then
    echo "$HOST is reachable"

else
    echo "$HOST is not reachable"
fi


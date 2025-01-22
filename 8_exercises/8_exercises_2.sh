#!/bin/bash

: << COMMENT
====Exercise 2:====

2) Modify the previous script so that it uses a logging function. 
Additionally tag each syslog message with "randomly" and include 
the process ID. Generate 3 random numbers.
COMMENT

log_it(){
    local LOG_LEVEL=$1
    shift
    MSG=$@
    TIMESTAMP=$(date +"%Y-%m-%d %T")
    HOST=$(hostname)
    PROGRAME_NAME=$(basename "$0")
    PID=$$

    if [ "$LOG_LEVEL" = "ERROR" ] || [ "$VERBOSE" ]
    then
        logger -t randomly \
            -s \
            -p user.info \
            "$MSG"
        
        echo "----------------------------------"

        echo "${TIMESTAMP} ${HOST} ${PROGRAME_NAME} [${PID}]: ${LOG_LEVEL} ${MSG}"

        echo "==================================="
        echo -e "\n"
    fi
}

for i in {1..3};
do
    NUMBER=$((1 + $RANDOM % 10))
    log_it ERROR "The generated random number is: $NUMBER"
done
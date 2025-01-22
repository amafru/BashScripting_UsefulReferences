#!/bin/bash
PID_FILE="/tmp/sleepwalkingserver.pid"
trap "rm $PID_FILE; EXIT" SIGHUP SIGINT SIGTERM
echo "$$" > $PID_FILE
while true
do
    :
done
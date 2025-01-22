#!/bin/bash
case "$1" in
start | START)
    ./tmp/sleepwalkingserver.sh
    ;;
stop | STOP)
    kill $(cat /tmp/sleepwalkingserver.pid)
    ;;
*)
    echo "Usage sleepwalking start|stop" ; exit 1
esac #EOF
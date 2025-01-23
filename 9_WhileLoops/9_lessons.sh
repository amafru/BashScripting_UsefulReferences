#!/bin/bash

INDEX=1
while [ $INDEX -lt 3 ]
do
    echo "Creating file testfile_${INDEX}"
    touch ./testfile_${INDEX}
    ((INDEX++))
done
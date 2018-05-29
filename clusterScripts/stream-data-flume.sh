#!/bin/bash
while IFS='' read -r line || [[ -n "$line" ]]; do
    myUUID=$(uuidgen -t)
    #echo "Text read from file: $line"
    echo "$line">/app/hduser/flume/data/msg_$myUUID.txt
done < "$1"

#!/bin/bash
LINE_COUNT=1
while read LINE
do
    echo "${LINE_COUNT}: ${LINE}"
    ((LINE_COUNT++))
done < /etc/passwd  

#File to read should be passed at the end. ie, in the line of 'done' command
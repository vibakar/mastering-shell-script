#!/bin/bash

case $1 in
    start)
    echo "Hello I'm at start"
    echo "Yes at start";;
    stop)
    echo "Hello I'm at stop";;
    *)
    echo "Executing as none of the case is matched";;
esac
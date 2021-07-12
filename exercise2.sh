#!/bin/bash

# echo "This script will exit with a 0 exit status."
# exit 0

# if [ -f $1 ]
# then
#   exit 0
# elif [ -d $1 ]
# then
#   exit 1
# else
#   exit 2
# fi

cat /etc/shadow
EXIT_CODE="$?"

if [ "$EXIT_CODE" = "0" ]
then
  echo "Command succeeded"
  exit 0
else 
  echo "Command failed"
  exit 1
fi

# -p creates parent directory if not exist
# mkdir -p /tmp/json/bak 

# &&(AND) condition : second condition will not execute if first condition fails
# cp test.txt /var/ && cp test.txt /etc/

# ||(OR) condition : Either one of the command will execute, if first fails, second will execute
# Incase first command is success, second will not execute
# cp test.txt /var/ || cp test.txt /etc/

# Semicolon seperated commas will execute irrespective of the status of previous command
# cp test.txt /var/ ; cp test.txt /etc/

# Using ping, -c is the count of package to send and -w is used to set the timeout
# ping -c 1 -w 1 google.com

# Exit code ranges from 0-255
# 0 exit code represents success
# non-zero exit code represents failure
# $? can be used to get exit code of last executed command
# exit keyword can be used to set the exit code manually
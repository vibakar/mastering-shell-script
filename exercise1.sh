#!/bin/bash

#Storing value in a variable(There should not be space before or after = sign)
CONTENT="Shell Scripting is Fun!"
echo "$CONTENT"

#Storing result of a command in a variable
HOSTNAME=$(hostname)
echo "This script is running on ________.${HOSTNAME}._______"

#If condition
if [ -f /etc/shadow ]
then
    echo "Shadow passwords are enabled."
    if [ -w /etc/shadow ]
    then
        echo "You have permissions to edit /etc/shadow."
    else
        echo "You do NOT have permissions to edit /etc/shadow."
    fi
fi

#For loop
WORDS="man bear pig dog cat sheep"
for WORD in $WORDS
do
    echo $WORD
done

#Getting input from user
read -p "Enter the file name or directory:" FILE
if [ -f $FILE ]
then
 echo "Entered name is a file"
elif [ -d $FILE ]
then
 echo "Entered name is a directory"
else
 echo "Entered name is neither a file nor directory"
fi

#Getting value from argument($0 provides the executed shell script filename, $1 provides the first argument name and so on)
# FILE=$1

#$@ is used to get all arguments
for FILE in $@
do
    if [ -f $FILE ]
    then
        echo "Entered name is a file"
    elif [ -d $FILE ]
    then
        echo "Entered name is a directory"
    else
        echo "Entered name is neither a file nor directory"
    fi
done

#below commands can be used with if condition

# -e file => Returns true if file exists
# -f file => Returns true if file exists and is a regular file
# -s file => Returns true if file exists and is not empty
# -d file => Returns true if directory exists
# -r file => Returns true if file is readable by you
# -w file => Returns true if file is writable by you
# -x file => Returns true if file is executable by you
# -z string => Returns true if string is empty
# -n string => Returns true if string is not empty
# -er => equal to
# -ne => not equal to
# -lt => less than
# -le => less than or equal to
# -gt => greater than
# -ge => greater then or equal to



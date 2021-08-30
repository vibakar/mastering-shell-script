#!/bin/bash

# if [ -d /home/vibakar/Downloads/shell_scripting ]
# then
#   echo "Directory Exists!!!"
# else
#   echo "No such directory exists"
# fi

# for i in /home/vibakar/*
# do
#     if [ -d $i ]
#     then
#         echo "--- $i is a directory ---"
#         echo
#     elif [ -f $i ]
#     then
#         echo "$i is a file"
#         echo
#     else
#         echo "$i type is unknown"
#     fi
# done

echo "Please select one of the following"
echo "a - Add a car"
echo "d - delete a car"
echo
read c

if [ "$c" == "a" ]
then
    echo "Enter the car name: "
    read carName
    echo "Enter the car color: "
    read carColor
    echo $carName $carColor >> database.txt
    echo "$carName added to database"
elif [ "$c" == "d" ]
then
    echo "Enter the car name to delete"
    read carName
    sed -i "/${carName}/d" database.txt
    echo "$carName deleted from database"
else
    echo "Selected option is invalid"
    exit 1
fi
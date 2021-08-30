# Create System Inventory
# =========================

# Create a file name database

touch /home/vibakar/ps/database

# -------------------------------------------------------------


# Create 1st script to add record

vi add-record

#!/bin/bash

echo Please enter hostname?
read hostname
echo

        grep -q $hostname /home/vibakar/ps/database
        if [ $? -eq 0 ]
        then
        echo ERROR -- Hostname $hostname already exist
        echo
        exit 0
        fi

echo Please enter IP address?
read IP
echo

        grep -q $IP /home/vibakar/ps/database
        if [ $? -eq 0 ]
        then
        echo ERROR -- IP $IP already exist
        echo
        exit 0
        fi


echo Please enter Description?
read description
echo

echo $hostname $IP $description >> database



# -------------------------------------------------------------


# Create 2nd script to delete record

vi del-record

#!/bin/bash

echo Please enter hostname or IP address?
read host
echo

        grep -q $host /home/vibakar/ps/database
        if [ $? -eq 0 ]
        then
        echo
        sed -i '/'$host'/d' /home/vibakar/ps/database
        echo $host has been deleted
        else
        echo Record does not exist
        fi

# -------------------------------------------------------------

# Create a 3rd script to give option of adding or deleting a record


vi inv-management

#!/bin/bash
echo
echo Please select one of the following options:
echo
echo 'a = Add a record'
echo 'd = Delete a record'
echo
        read choice

                case $choice in
a) /home/vibakar/ps/add-record;;
d) /home/vibakar/ps/del-record;;
*) echo Invalid choice - Bye.

                esac
#!/bin/bash

echo "Please provide a username?"
read u
echo

grep -q $u /etc/passwd
        if [ $? -eq 0 ]
        then
        echo ERROR -- User $u already exist
        echo Please choose another username
        echo
        exit 0
        fi


echo "Please provide user description?"
read d
echo

echo "Do you want to specify user ID (y/n)?"
read ynu
echo
        if [ $ynu == y ]
        then
        echo "Please enter UID?"
        read uid
                grep -q $uid /etc/passwd
                if [ $? -eq 0 ]
                then
                echo ERROR -- UserID $uid already exist
                echo
                exit 0
                else
                useradd $u -c "$d" -u $uid
                echo
                echo $u account has been created
                fi
        elif [ $ynu == n ]
        then
        echo No worries we will assign a UID
        useradd $u -c "$d"
        echo



####################
# Command to create user
# sudo useradd -m -d /opt/username <username>
# -m => creates a home directoy for new user(If -m not specified, home directory will not be created)
# -d => creates a home directory provied by us(optional)

# Create user with userid
# sudo useradd -u 1500 <username>

# To verify userid
# id -u <username>

# Create user on specific group
# sudo useradd -g <group_name> <username>

# To verify user's group name
# id -gn <username>

# There are two types of groups in Linux operating systems Primary group and Secondary (or supplementary) group.
# Each user can belong to exactly one primary group and zero or more secondary groups.
# -g for sepcifying primary group, -G for specifying multiple groups
# sudo useradd -g <p_gn> -G <s_gn>,<s_gn> <username>

# To create user with some comment(short description)
# sudo useradd -c "Test User Account" <username>

# Creating user with expiry date
# sudo useradd -e 2022-01-22 <username>
# -e can be set to empty, to disable the expiration of an account

# To verify the user account expiry date
# sudo chage -l username

# To check default values
# useradd -D

# All the above command combines
# sudo useradd -m -d /opt/<username> -c "Short description" -u <user_id> -g <p_grp> -G <s_grp>,<s_grp> -e "2022-01-22" <username>
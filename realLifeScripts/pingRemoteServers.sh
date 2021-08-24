#!/bin/bash

ping -c1 192.168.1.1
        if [ $? -eq 0 ]
        then
        echo OK
        else
        echo NOT OK
        fi

# Don't show the output

# ping -c1 192.168.1.1 &> /dev/null
#         if [ $? -eq 0 ]
#         then
#         echo OK
#         else
#         echo NOT OK
#         fi


# Define variable
# hosts="192.168.1.1"
# ping -c1 $hosts &> /dev/null
#         if [ $? -eq 0 ]
#         then
#         echo $hosts OK
#         else
#         echo $hosts NOT OK
#         fi


# Multiple IPs
# IPLIST="path_to_the_Ip_list_file"

# for ip in $(cat $IPLIST)

# do
#    ping -c1 $ip &> /dev/null
#    if [ $? -eq 0 ]
#    then
#    echo $ip ping passed
#    else
#    echo $ip ping failed
#    fi
# done
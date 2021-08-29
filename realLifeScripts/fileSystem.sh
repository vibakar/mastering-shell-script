#!/bin/bash

for i in {1..25}
do
	sleep 1
	echo $i
done


# 2 - Create multiple files with different names

# for i in {1..10}
# do
# 	touch imran.$i
# done


# 3 - Create multiple files upon input

# echo How many files do you want?
# read t
# echo
# echo Files names should start with?
# read n

# for i in $(seq 1 $t)
# do
# 	touch $n.$i
# done


# 4 - Assign write permissions to files

# for i in imran*
# do
# 	echo Assigning write permissions to $i
# 	chmod a+w $i
# 	sleep 1
# done

# 5 - Assign write permissions to files with total time it will take

# total=`ls -l imran* | wc -l`
# echo It will take $total seconds to assign permissions...
# echo
# for i in imran*
# do
# 	echo Assigning write permissions to $i
# 	chmod a+w $i
# 	sleep 1
# done


# For loops Scripts for File System - 2
# ========================================
# 1 - Rename all *.txt files extension to none

# for filename in *.txt
# do
# mv $filename ${filename%.txt}.none
# done

# 2 - Check to see if files exist
#!/bin/bash
# List of files you are curious about

# FILES="/etc/passwd
# /etc/group
# /etc/shadow
# /etc/nsswitch.conf
# /etc/sshd_ssh_config
# /etc/fake"
# echo
# for file in $FILES
# do
# 	if [ ! -e "$file" ]       # Check if file exists.
# 	then
# 	echo $file = does not exist
# 	echo
# 	fi
# done
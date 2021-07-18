#!/bin/bash
# cd $1
# for FILE in *.txt
# do
#  mv $FILE $(date +"%Y%m%d")$FILE
# done

read -p "Enter the file extension: " FILE_EXTENSION

read -p "Enter the prefix to use: " FILE_PREFIX
cd ./test
prefix=""

for FILE in *$FILE_EXTENSION
do
    if [ -z $FILE_PREFIX ]
    then
      prefix=$(date +"%Y%m%d")
    else
      prefix=$FILE_PREFIX
    fi
    mv $FILE ${prefix}${FILE}
    echo "File $FILE is renamed to ${prefix}${FILE}"
done

#Wild card can be used like below
# ls *.sh => List all files with .sh extension
# ls a?.txt => List all 2 letter files starting with character 'a', second character can be anything
# ls a[a-e].txt => List all 2 letter files starting with character 'a', second character should be between a-e
# ls a[!a-e].txt => List all 2 letter files starting with character 'a', second character should be not be between a-e
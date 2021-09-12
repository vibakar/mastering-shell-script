# Extracting required data from curl output using the combination of grep, cut, sed, tail
curl https://reqres.in/api/users?page=1 | json_pp | grep avatar | tail -1 | sed "s/\"avatar\" : \"//" | cut -d "\"" -f1 | sed "s/^ *//"

# ping remote host(don't display output on the screen)
ping -c1 192.168.1.1 &> /dev/null
if [ $? -eq 0 ]
then
    echo "OK"
else
    echo "NOT OK"
fi

# While loop
LINE_COUNT=1
while read LINE
do
    echo "${LINE_COUNT}: ${LINE}"
    ((LINE_COUNT++))
done < /etc/passwd  

# Switch case
case $1 in
    start)
    echo "Hello I'm at start"
    echo "Yes at start";;
    stop)
    echo "Hello I'm at stop";;
    *)
    echo "Executing as none of the case is matched";;
esac

#File to read should be passed at the end. ie, in the line of 'done' command
# Script scheduling(Cron Tab)
crontab -l #to see the list of scheduled script
crontab -e #to schedule the script
34 20 * * * /path/to/script > output.txt

# Copying script to remote machine
scp -r /local/directory remote_username@remote_machine:/remote/directory

# Delete files which are older than 30 days
find /home/vibakar/Downloads/shell_scripting -mtime +30 -exec rm {} \;

# Tar and compress file
tar cvf /tmp/backup.tar <folder-path-to-create-tar>
gzip backup.tar

# Count word using grep
grep -c <word_to_search> <file_path>

# top command is used to show the Linux processes
top

# To Exit after executing top command once
top -n 1 

# OR condition using grep
df -h | grep "udev\|\/dev\/sda11 \|Filesystem"

# OR condition using egrep, Its simple than using grep
df -h | egrep "udev|/dev/sda11|Filesystem"

# To get disk space of the folder and the files inside of it
du -ah <folder_path> 

# Commands to check memory and cpu
lscpu
cat /proc/cpuinfo
lsmem
cat /proc/meminfo

# To check free and available memory
free -h

# To check OS details
cat /etc/os-release

# To get size of particular file
ls -sh <file_name>

# sed useful commands

# It will change the word love to like and display it on the screen and it will change all occurences
# If g flag is not used, only first occurence of the word on the line will be changed
# i flag is for non case sensitive
sed 's/love/like/ig' ./test/test.txt

# To write to a original file
sed -i 's/love/like/ig' ./test/test.txt

# To write to a original file and take the backup of original file
sed -i.bak 's/love/like/ig' ./test/test.txt

# It will change only first line
sed '1 s/love/like/ig' ./test/test.txt

# It will change line 1 to 3
sed '1,3 s/love/like/ig' ./test/test.txt

# To remove a line which matches the word football
sed '/football/d' ./test/test.txt

# To remove a empty line
sed '/^$/d' ./test/test.txt

# To remove a line starting with #
sed '/^#/d' ./test/test.txt

# To pass multiple parameter
sed '/^#/d ; s/love/like/ig ; /^$/d' ./test/test.txt

# This approach can also be used to pass multiple parameter
sed -e '/^#/d' -e 's/love/like/ig' -e '/^$/d' ./test/test.txt

# Printing file content and substituting/deleting the lines
cat ./test/test.txt | sed -e '/^#/d' -e 's/love/like/ig' -e '/^$/d'

# Other useful linux commands

# To check how long the system is up
uptime

# Printing the first field
cat database.txt | cut -d "a" -f 1

# Prints rest of field except first
cat database.txt | cut -d " " -f 1 --complement

# This option allows you to specify a different output delimiter string
cat database.txt | cut -d " " --output-delimiter="_" -f 1-3
# It will list the files older than 30 days
# find /home/vibakar/Downloads/shell_scripting -mtime +30 -exec ls -l {} \;

# It will delete the files older than 30 days
# find /home/vibakar/Downloads/shell_scripting -mtime +30 -exec rm {} \;

# It will rename the files older than 30 days
# find /home/vibakar/Downloads/shell_scripting -mtime +30 -exec mv {} {}.old \;

#It will create file with older dates
# touch -d "Thu, 1 March 2018 12:30:00" a
# It will find the word "touch" in the given file path
# grep -i touch ./deleteOldFiles.sh 

# It will fimd the word "touch" in the given file path and write to a different file
# grep -i touch ./deleteOldFiles.sh > ./output.txt

#administrative commands
date | awk '{print $1}'
uptime | awk '{print $1}'
df -h | grep root

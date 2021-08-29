#!/bin/bash

# Central Logging
# =================
# Trace the log file:

vi /root/logtail
tail -fn0 /var/log/messages | while read line
do
	echo $line | egrep -i "refused|invalid|error|fail|lost|shut|down|offline"
        if [ $? = 0 ]
        then
        echo $line >> /tmp/filtered-messages
        fi
done

# Run script in the background:

# nohup /root/logtail &&


# --------------------------------------------------------------------
# Notification:
vi /root/Log-Alert
systems="imran_ny@hotmail.com,charles.gorden@email.com"

if [ -s /tmp/filtered-messages ]
        then
        cat /tmp/filtered-messages | sort | uniq | mail -s "CHECK: Syslog Errors" $systems
        rm /tmp/filtered-messages
        else
fi

# --------------------------------------------------------------------

# Schedule the Notification to run every 15 minutes:

# */15 * * * * /root/Log-Alert
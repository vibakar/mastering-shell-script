#!/bin/bash

# Check if a process is running and kill it
# ===========================================

# vi sleep600
#!/bin/bash
# sleep 600


# -----------------------------------------------------------


# Run commands
ps -ef | grep "sleep 600"
ps -ef | grep "sleep 600" | grep -v grep 
ps -ef | grep "sleep 600" | grep -v grep | awk '{print $2}' 
ps -ef | grep "sleep 600" | grep -v grep | awk '{print $2}' | xargs -I{} echo {}
ps -ef | grep "sleep 600" | grep -v grep | awk '{print $2}' | xargs -I{} kill {}

# -----------------------------------------------------------

# Create a script

#!/bin/bash
ps -ef | grep "sleep 600" | grep -v grep | awk '{print $2}' | xargs -I{} kill {}
echo All sleeping processes are killed


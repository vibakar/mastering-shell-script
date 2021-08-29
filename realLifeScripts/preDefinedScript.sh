# Script for Pre-Defined Information
#!/bin/bash
read -r -p "Enter name of script: " script
read -r -p "Whats your fullname: " fname
read -r -p "Whats the description of this script: " description
echo "#!/bin/bash" > /home/vibakar/ps/${script}
echo
echo "###########################################" >>
/home/vibakar/ps/${script}
echo
echo "#Author: " $fname >> /home/vibakar/ps/${script}
echo
echo "#Date: " $(date) >> /home/vibakar/ps/${script}
echo
echo "#Description: " $description >> /home/vibakar/ps/${script}
echo
echo "#Modified: " $(date) >> /home/vibakar/ps/${script}
echo
echo "###########################################" >>
/home/vibakar/ps/${script}
echo
chmod a+x ${script}
vim ${script}
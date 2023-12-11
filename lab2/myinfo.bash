#!/bin/bash

# a. Ask the user about their logname
read -p "Enter the logname of the user: " logname

# b. Print full info about files and directories in the specified user's home directory
echo -e "\nFull info about files and directories in $logname's home directory:"
ls -l "/home/$logname"

# c. Copy the specified user's files and directories to /tmp directory
echo -e "\nCopying $logname's files and directories to /tmp:"
cp -r "/home/$logname" /tmp/

# d. Get the specified user's current processes status
echo -e "\nCurrent processes status for $logname:"
ps aux | grep $logname

echo -e "\nScript completed successfully."

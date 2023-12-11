#!/bin/bash

# Navigate to the user's home directory
cd ~

# Use a for loop to iterate over all files and directories
for item in *
do
  # Check if the item is a file or directory
  if [ -f "$item" ] || [ -d "$item" ]
  then
    # Give execute permission to the owner
    chmod u+x "$item"
  fi
done

echo "Execute permission granted to all files and directories in the home directory."


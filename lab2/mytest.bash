#!/bin/bash

function check_type() {
    if [ -e "$1" ]; then
        if [ -f "$1" ]; then
            echo "$1 is a regular file."
        elif [ -d "$1" ]; then
            echo "$1 is a directory."
        else
            echo "$1 exists, but its type is unknown."
        fi
    else
        echo "$1 does not exist."
    fi
}

function check_permissions() {
    if [ -e "$1" ]; then
        echo "Permissions for $1:"
        echo -n "Read: "
        [ -r "$1" ] && echo "Yes" || echo "No"
        
        echo -n "Write: "
        [ -w "$1" ] && echo "Yes" || echo "No"
        
        echo -n "Execute: "
        [ -x "$1" ] && echo "Yes" || echo "No"
    else
        echo "$1 does not exist."
    fi
}

# Main script
if [ $# -eq 0 ]; then
    echo "Usage: $0 <file/directory>"
    exit 1
fi

file_or_directory="$1"

check_type "$file_or_directory"
check_permissions "$file_or_directory"

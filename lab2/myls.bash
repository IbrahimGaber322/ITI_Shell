#!/bin/bash

function check() {
    if [[ $1 == "-l" ]]; then
        [ -n "$2" ] && ls -l "$2" || ls -l
    elif [[ $1 == "-a" ]]; then
        [ -n "$2" ] && ls -a "$2" || ls -a
    elif [[ $1 == "-d" ]]; then
        [ -n "$2" ] && ls -d "$2" || ls -d
    elif [[ $1 == "-i" ]]; then
        [ -n "$2" ] && ls -i "$2" || ls -i
    elif [[ $1 == "-R" ]]; then
        [ -n "$2" ] && ls -R "$2" || ls -R
    elif [ -z "$2" ]; then
        [ -n "$1" ] && ls "$1" || ls 
    else
        echo "Usage: ls [option] [directory] 
        Options:  -l: list in long format.
                  -a: list all entries including the hiding files.
                  -d: if an argument is a directory, list only its name.
                  -i: print inode number.
                  -R: recursively list subdirectories."
    fi
}

# Example usage
check "$1" "$2"

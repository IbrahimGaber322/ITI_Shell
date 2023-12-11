#!/bin/bash

PS3="Select an option: "
options=("ls" "ls -a" "exit")

select opt in "${options[@]}"
do
    case $opt in
        "ls")
            ls
            ;;
        "ls -a")
            ls -a
            ;;
        "exit")
            break
            ;;
        *)
            echo "Invalid option"
            ;;
    esac
done


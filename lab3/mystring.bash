#!/bin/bash

read -p "Enter a string: " input_string

case "$input_string" in
    [A-Z]*)	
        echo "You entered an Upper Case string."
        ;;
    [a-z]*)
        echo "You entered a Lower Case string."
        ;;
    [0-9]*)
        echo "You entered a string of Numbers."
        ;;
    [a-zA-Z]*)
        echo "You entered a mixed case string."
        ;;
    [a-zA-Z0-9]*)
        echo "You entered a mixed case alphanumeric string."
        ;;
    "")
        echo "You entered Nothing."
        ;;
    *)
        echo "You entered a Special Character or a combination of characters."
        ;;
esac


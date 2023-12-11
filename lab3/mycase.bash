#!/bin/bash

read -p "Enter a character: " input_char

case "$input_char" in
    [A-Z])
        echo "You entered an Upper Case character."
        ;;
    [a-z])
        echo "You entered a Lower Case character."
        ;;
    [0-9])
        echo "You entered a Number."
        ;;
    "")
        echo "You entered Nothing."
        ;;
    *)
        echo "You entered a Special Character or multiple characters."
        ;;
esac


#!/bin/bash

while true
do
    new_mails=$(ls /var/mail/username)
    if [ -n "$new_mails" ]; then
        echo "You have new mail!"
        # Add any other actions you want to take when new mail is found
    fi
    sleep 10
done


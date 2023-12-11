#!/bin/bash

while read -r user
do
    mail -s "Subject" "$user" < mtemplate
done < <(cut -d: -f1 /etc/passwd)


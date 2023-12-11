#!/bin/bash

backup_dir="backup"
mkdir -p "$backup_dir"

for file in ~/.*
do
    if [ -f "$file" ]; then
        cp "$file" "$backup_dir"
    fi
done


#!/bin/bash

read -p "Enter numbers (space-separated): " numbers

IFS=' ' read -ra num_array <<< "$numbers"

sum=0
for num in "${num_array[@]}"; do
    sum=$((sum + num))
done

average=$(echo "scale=2; $sum / ${#num_array[@]}" | bc)

echo "Average: $average"


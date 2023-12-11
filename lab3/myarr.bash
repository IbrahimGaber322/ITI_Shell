#!/bin/bash

read -p "Enter the number of elements: " num_elements

declare -a my_array

for ((i=1; i<=$num_elements; i++))
do
    read -p "Enter element $i: " element
    my_array+=("$element")
done

echo "Array elements: ${my_array[@]}"


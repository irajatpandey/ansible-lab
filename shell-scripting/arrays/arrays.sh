#!/bin/bash

## Arrays in Bin bash


my_array=("Apple" "Oranges" "Cherry")

echo "${my_array[0]}"

#Print all elements in an array

for item in "${my_array[@]}"
do
    echo "Fruit: $item"
done



# Print the length of an array
#

echo "Length of an array is ${#my_array[@]}"

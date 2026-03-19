#!/bin/bash

## Loops

echo "Loops in Shell Scripting"

for ((i=1; i < 5; i++))
do
	echo "$i"
done




## while loop

i=1

# Python: while i <= 5:
while (( i <= 5 ))
do
    echo "Number is: $i"
    (( i++ ))  # Increment (Python: i += 1)
done


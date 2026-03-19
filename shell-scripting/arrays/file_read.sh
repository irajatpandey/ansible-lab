#!/bin/bash

# File Reading 
#
#
#


file="arrays.sh"

while read -r line
do
	echo "Line read: $line"
done < "$file"


# Check file exists
#
#
if [[ -f "config.txt" ]]; then
    echo "Bhai, file mil gayi!"
else
    echo "File nahi hai."
fi


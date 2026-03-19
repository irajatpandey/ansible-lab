#!/bin/bash
set -e  # Exit on error
set -u  # Exit on unset variables

Threshold=80
df -h | awk 'NR > 1 {print $5, $6}' | while read usage location; do

usage_number=$(echo $usage | tr -d '%')

if [ "$usage_number" -gt "$Threshold" ]; then
	echo "Warning: Partition $location is at ${usage_number}%"
fi
done




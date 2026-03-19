#!/bin/bash


## Conditional Statements

read -p "Enter a number to check even or odd:" number

if (( $number % 2 == 0  ));
then 
	echo "$number is even number"
else
	echo "$number is odd number"
fi


## Conditional Statements for String

name="India"
read -p "Enter a string for the comparision: " country

if [[ "$name" == "$country" ]];
then
	echo "$country is my country"
else
	echo "$country is foreign country"
fi


## Artithmetic Operators in Shell Scripting

# Flag 	Meaning	                       Example
# -eq	Equal to	    			   if [ "$a" -eq "$b" ]
# -ne	Not equal Operators			   if [ "$a" -ne "$b" ]
# -gt	Greater than			 	   if [ "$a" -gt "$b" ]
# -ge	Greater than or equal to	   if [ "$a" -ge "$b" ]
# -lt	Less than					   if [ "$a" -lt "$b" ]
# -le	Less than or equal to		   if [ "$a" -le "$b" ]

read -p "Enter a number: " num

if (( num > 100 ));
then
	echo "$num is greater than 100"

elif (( num < 100));
then
	echo "$num is less than 100"
else
	echo "$num is equals to 100"
fi



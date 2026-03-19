#!/bin/bash
 ## Functions

 add() {
 
	 sum=$(($1 + $2))
	 echo "Sum is $sum"
 
 }

add 10 20



get_square() {
    echo $(( $1 * $1 ))
}


result=$(get_square 4)
echo "Square is $result"





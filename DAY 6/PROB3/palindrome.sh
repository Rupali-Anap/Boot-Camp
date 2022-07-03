#! /bin/bash

function pal()
{
	n=$1
	num=$1
	rev=0
	while [ $n -gt 0 ]
	do
		a=$(( $n%10 ))
		n=$(( $n/10 ))
		rev=$(( $rev*10 ))
		rev=$(( $rev+a ))
	done
	echo "Number: $num"
	echo "Reverse: $rev"
	if [ $num -eq $rev ]
	then
		echo "$num is palindrome"
	else
		echo "$num is not palindrome"
	fi
}

read -p "Enter 1st number: " n1
read -p "Enter 2nd number: " n2

pal $n1
pal $n2

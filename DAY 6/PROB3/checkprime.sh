#! /bin/bash

function prime()
{
	x=$1
	p=1
	for (( i=2; i<x/2; i++ ))
	do
	        if [ $(( x%i )) -eq 0 ]
	        then
	                p=0
	                break
	        fi
	done
	return $p
}

function pal()
{
        n=$1
        rev=0
        while [ $n -gt 0 ]
        do
	        a=$(( $n%10 ))
	        n=$(( $n/10 ))
	        rev=$(( $rev*10 ))
	        rev=$(( $rev+a ))
        done
	return $rev
}

read -p "Enter no: " n
prime $n
chk=$?
if [ $chk -eq 1 ]
then
	pal $n
	rev=$?
	prime $rev
	res=$?
	if [ $chk -eq 1 ]
	then
		echo "The no and it's palindrome are prime"
	fi
else
	echo "The no is not prime"
fi

#! /bin/bash

n1=$(( $RANDOM%900+100 ))
n2=$(( $RANDOM%900+100 ))
n3=$(( $RANDOM%900+100 ))
n4=$(( $RANDOM%900+100 ))
n5=$(( $RANDOM%900+100 ))

echo "5 Random nos:"
echo -e "$n1\n$n2\n$n3\n$n4\n$n5\n"

if [ $n1 -gt $n2 ] && [ $n1 -gt $n3 ] && [ $n1 -gt $n4 ] && [ $n1 -gt $n5 ]
then
	echo "$n1 is greatest no of them all"
elif [ $n2 -gt $n1 ] && [ $n2 -gt $n3 ] && [ $n2 -gt $n4 ] && [ $n2 -gt $n5 ]
then
	echo "$n2 is greatest no of them all"
elif [ $n3 -gt $n1 ] && [ $n3 -gt $n2 ] && [ $n3 -gt $n4 ] && [ $n3 -gt $n5 ]
then
	echo "$n3 is greatest no of them all"
elif [ $n4 -gt $n1 ] && [ $n4 -gt $n2 ] && [ $n4 -gt $n3 ] && [ $n4 -gt $n5 ]
then
	echo "$n4 is greatest no of them all"
else
	echo "$n5 is greatest no of them all"
fi

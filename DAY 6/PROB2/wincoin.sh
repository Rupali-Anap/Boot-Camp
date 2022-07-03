#! /bin/bash

hcount=0
tcount=0

while [ $hcount -lt 11 -a $tcount -lt 11 ]
do
	toss=$(( RANDOM%2 ))
	if [ $toss -eq 0 ]
	then
		hcount=$(( hcount+1 ))
	else
		tcount=$(( tcount+1 ))
	fi
done

echo "Head wins: $hcount	Tail wins: $tcount"

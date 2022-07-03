#! /bin/bash

read -p "Enter Year: " y

digit=$(( y/1000 ))
chk1=$(( y%4 ))
chk2=$(( y%100 ))
chk3=$(( y%400 ))

if [ $digit -ge 1 ] && [ $digit -lt 10 ]
then
	if [ $chk1 -eq 0 ]
	then
		if [ $chk2 -ne 0 ] || [ $chk3 -eq 0 ]
		then
			echo "It is a Leap Year"
		else
			echo "It is not a Leap Year"
		fi
	else
		echo "It is not a Leap Year"
	fi
else
	echo "It is not a Leap Year"
fi

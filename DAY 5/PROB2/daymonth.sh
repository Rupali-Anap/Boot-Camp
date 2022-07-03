#! /bin/bash

read -p "Enter Day(dd): " d
read -p "Enter Month(mm): " m

if [ $m -eq 3 ]
then
	if [ $d -gt 20 ] && [ $d -lt 31 ]
	then
		echo "True"
	else
		echo "False"
	fi
elif [ $m -eq 4 ]
then
	if [ $d -gt 0 ] && [ $d -lt 30 ]
	then
		echo "True"
	else
		echo "False"
	fi
elif [ $m -eq 5 ]
then
	if [ $d -gt 0 ] && [ $d -lt 31 ]
	then
		echo "True"
	else
		echo "False"
	fi
elif [ $m -eq 6 ]
then
	if [ $d -gt 0 ] && [ $d -lt 20 ]
	then
		echo "True"
	else
		echo "False"
	fi
else
	echo "False"
fi

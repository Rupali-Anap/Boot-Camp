#! /bin/bash

function ftoc()
{
	result=`echo $1 | awk '{print ($1-32)*5/9}'`
        echo "$1 Farenheit is $result Celsius"
}

function ctof()
{
        result=`echo $1 | awk '{print ($1*9/5)+32}'`
        echo "$1 Celsius is $result Farenheit"
}

read -p "Enter no: " x
echo -e "Conversions:\n1. fahrenheit to Celsius\n2. Celsius to fahrenheit"
read -p "Enter option(1/2): " n
result=0
case $n in
        1)
	if [ $x -lt 32 -o $x -gt 212 ]
	then
		echo "Not within freezing & boiling point"
	else
		ftoc $x
	fi
	;;
        2)
	if [ $x -lt 0 -o $x -gt 100 ]
	then
		echo "Not within freezing & boiling point"
	else
		ctof $x
        fi
	;;
        *)
        echo "Invalid entry"
        ;;
esac

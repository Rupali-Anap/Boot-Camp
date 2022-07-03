#! /bin/bash

read -p "Enter no: " x
prime=1

for (( i=2; i<x/2; i++ ))
do
        if [ $(( x%i )) -eq 0 ]
        then
                echo "$x is not prime"
                prime=0
                break
        fi
done

if [ $prime -eq 1 ]
then
        echo "$x is prime"
fi

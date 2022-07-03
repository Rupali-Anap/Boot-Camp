#! /bin/bash

read -p "Enter no: " n

for (( x=1; x*x<=n; x++ ))
do
        prime=1
        for (( i=2; i<=x/2; i++ ))
        do
                if [ $(( x%i )) -eq 0 ]
                then
                        prime=0
                        break
                fi
        done
        if [ $prime -eq 1 -a $(( n%x )) -eq 0 ]
        then
                echo "$x is prime factor"
        fi
done

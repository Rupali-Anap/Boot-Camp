#! /bin/bash

read -p "Enter no: " n

fact=1

for (( i=n; i>1; i-- ))
do
  fact=$((fact * i))
done

echo "Factorial of $n: $fact"

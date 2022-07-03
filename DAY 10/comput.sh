#!/bin/bash -x

read -p "Enter first input" a
read -p "Enter seconf input" b
read -p "Enter third input" c
echo "$a $b $c"
result1=$(($a+$b*$c))
result2=$(($a*$b+$c))
result3=$(($c+$a/$b))
result4=$(($a%$b+$c))

echo "$result1 $result2 $result3 $result4"


#dictonary

declare -A review

review[rev1]=$result1
review[rev2]=$result2
review[rev3]=$result3
review[rev4]=$result4

echo "Dictonary Is : ${review[*]}"
echo "Dictionary Keys ${!review[*]}"
revarray=($result1 $result2 $result3 $result4)

echo "Array :${revarray[*]}"


#sorting the array in ascending order

echo "Array in original order"
echo ${revarray[*]}

for (( i = 0; i<5; i++ ))
do



        for(( j = 0; j<5-i-1; j++ ))
        do


                if [ ${revarray[j]} -gt ${revarray[$((j+1))]} ]
                then

                   temp=${revarray[j]}
                   revarray[$j]=${revarray[$((j+1))]}
                   revarray[$((j+1))]=$temp

                fi
        done

done

echo "Array in ascending Order is :"
echo ${revarray[*]}

#sorting the array in descending order

for (( i = 0; i<5; i++ ))
do



        for(( j = 0; j<5-i-1; j++ ))
        do


                if [ ${revarray[j]} -lt ${revarray[$((j+1))]} ]
                then

                   temp=${revarray[j]}
                   revarray[$j]=${revarray[$((j+1))]}
                   revarray[$((j+1))]=$temp

   fi
        done

done

echo "Array in descending Order is :"
echo ${revarray[*]}





#!/bin/bash
print_flip ()
{
    
    local -n keys=$1
    local -n values=$2

    max_value=0
    max_value_index=0
    for(( i = 0; i < ${#values[@]}; i++ ))
    do
        if(( values[i] >= max_value ))
        then    
                max_value=${values[i]}
                max_value_index=$i
        fi
    done
    echo "By fliping coins is ${keys[$max_value_index]} with ${max_value}%" 
}

read -p "Enter number no:" no_of_flips

echo
echo "Singlets:"


declare -A singlet_frequency=( 

                                [H]=0
                                [T]=0

                              )
for(( flip = 1; flip <= 10; flip++ ))
do
    echo -n "Flip-$flip is "
    (( coin = RANDOM % 2 ))
    case $coin in 
        0)
            echo "Heads"
            (( singlet_frequency[H]++ ))
            ;;
        1)
            echo "Tails"
            (( singlet_frequency[T]++ ))
    esac
done

echo "doublets:"

declare -A doublet_frequency=( 

                                [HH]=0
                                [HT]=0
                                [TH]=0
                                [TT]=0

                              )

for(( flip = 1; flip <= 10; flip++ ))
do
    echo -n "Flip-$flip is "
    (( coin_1 = RANDOM % 2 ))
    (( coin_2 = RANDOM % 2 ))

    
    case $coin_1$coin_2 in 
        00)
            echo "Heads Heads"
            (( doublet_frequency[HH]++ )) 
            ;;
        01)
            echo "Heads Tails"
            (( doublet_frequency[HT]++ ))
            ;;
        10)
            echo "Tails Heads"
            (( doublet_frequency[TH]++ ))
            ;;
        11)
            echo "Tails Tails"
            (( doublet_frequency[TT]++ ))
            ;;
    esac
done

echo "Triplets:"

declare -A triplet_frequency=( 
                                    [HHH]=0
                                    [HHT]=0
                                    [HTH]=0
                                    [HTT]=0
                                    [THH]=0
                                    [THT]=0
                                    [TTH]=0
                                    [TTT]=0
                            
                                )
for(( flip = 1; flip <= 10; flip++ ))
do
    echo -n "Flip-$flip is "
    (( coin_1 = RANDOM % 2 ))
    (( coin_2 = RANDOM % 2 ))
    (( coin_3 = RANDOM % 2 ))

    
    case $coin_1$coin_2$coin_3 in 
        000)
            echo "Heads Heads Heads"
            (( triplet_frequency[HHH]++ )) 
            ;;
        001)
            echo "Heads Heads Tails"
            (( triplet_frequency[HHT]++ ))
            ;;
        010)
            echo "Heads Tails Heads"
            (( triplet_frequency[HTH]++ ))
            ;;
        011)
            echo "Heads Tails Tails"
            (( triplet_frequency[HTT]++ ))
            ;;
        100)
            echo "Tails Heads Heads"
            (( triplet_frequency[THH]++ )) 
            ;;
        101)
            echo "Tails Heads Tails"
            (( triplet_frequency[THT]++ ))
            ;;
        110)
            echo "Tails Tails Heads"
            (( triplet_frequency[TTH]++ ))
            ;;
        111)
           echo "Tails Tails Tails"
            (( triplet_frequency[TTT]++ ))
            ;;
    esac
done



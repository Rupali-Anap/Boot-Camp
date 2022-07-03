#! /bin/bash

wins=0
bets=0
bank=100

while [ $bank -gt 0 -a $bank -lt 200 ]
do
        gamble=$(( RANDOM%2 ))
	bets=$(( bets+1 ))
        if [ $gamble -eq 0 ]
        then
		wins=$(( wins+1 ))
                bank=$(( bank+1 ))
        else
                bank=$(( bank-1 ))
        fi
done

echo -e "Bets: $bets\nWins: $wins\nMoney: Rs $bank"

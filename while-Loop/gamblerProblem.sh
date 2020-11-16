#!/bin/bash 

echo "Betting started with Rs.100 balance "
win=0
lose=0
bal=100
while [[ $bal -ge 0 && $bal -le 200 ]]
do
	bet=$((RANDOM%2+1))
	if [ $bet -eq 1 ]
	then
		echo "Win"
		((bal++))
		((win++))
	else
		echo "Lose"
		((bal--))
		((lose++))
	fi
done
echo "Gambler wins $win times and loses $lose times"

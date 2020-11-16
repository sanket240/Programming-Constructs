#!/bin/bash -x

echo "Enter 1 for Heads and 2 for Tails"
read -p "Enter value: " value;
num=$(( RANDOM%2 +1 ))
if [ $value == $num  ]
then
	echo "You win"
else
	echo "You lose"
fi


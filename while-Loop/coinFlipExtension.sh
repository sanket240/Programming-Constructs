#!/bin/bash 

headcnt=0
tailcnt=0
while [[ $headcnt -lt 11 && $tailcnt -lt 11 ]]
do
	flip=$((RANDOM%2+1))
	if [ $flip -eq 1 ]
	then
		((headcnt++))
	else
		((tailcnt++))
	fi
done
echo "$headcnt"
echo "$tailcnt"
if [ $headcnt -gt $tailcnt ]
then
echo "Heads wins the series"
else
echo "Tails wins the series"
fi


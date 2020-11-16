#!/bin/bash
a=$1
read -p "Enter a number: " n
for(( ind=2; $ind<=$n; ind++ ))
do
	if [ $(($n%$ind)) -eq 0 ]
	then
		a[indOne]=$ind
		((indOne++))
		n=$(($n/$ind))
	fi
	
	if [ $(($n%$ind)) -eq 0 ]
	then
		((ind--))
	fi
done
echo "Prime factors of number are ${a[@]}"


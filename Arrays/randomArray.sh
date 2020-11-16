#!/bin/bash 

echo "Enter how many numbers you want to generate: "
read n
for((i=0;i<$n;i++))
do
	arr[$i]=$((RANDOM%1000+100))
done
echo "Numbers are: "

for((i=0;i<$n;i++))
do
	echo "${arr[$i]}"
done
small=${arr[0]}
secSmall=${arr[0]}
large=${arr[0]}
secLarge=${arr[0]}

for((i=1;i<$n;i++))
do
	if [[ $small -gt ${arr[i]} || $secSmall -gt ${arr[i]} ]]
	then
		if [ $small -gt ${arr[i]} ]
		then
			small=${arr[i]}
		else
			secSmall=${arr[i]}
		fi
	fi
done

for((i=1;i<$n;i++))
do
	if [[ $large -lt ${arr[i]} || $secLarge -lt ${arr[i]} ]];
	then
		if [ $large -lt ${arr[i]} ];
		then
			large=${arr[i]}
		else
			secLarge=${arr[i]}
		fi
	fi
done

echo "Second smallest number is $secSmall and second largest number is $secLarge"


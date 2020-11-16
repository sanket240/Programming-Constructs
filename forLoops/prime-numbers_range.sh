#!/bin/bash
 
echo "Enter range start and end: "
read s e
for((i=$s;i<=$e;i++))
do
	count=0
	for((j=2;j<$i;j++))
	do
		if [ $(($i%$j)) -eq 0 ]
		then
			count=1
			break
		fi
	done
		if [ $count -eq 0 ]
		then
			echo "$i"
		fi
done

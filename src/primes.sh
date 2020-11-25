#!/bin/bash
#This script finds prime numbers that is given in a set.

var1="$1"
var2="$2"
total=0

for((j=$var1;j<=$var2;j++))
do
	c=0
	for((k=2;k<=$j-1;k++))
	do
		calc=`line $j%$k`
		if (( $calc == 0 ))
		then
			c=1
			break
		fi
	done

	if (( $c==0 )) 
	then
		if (( $total<=2 ))
		then
			printf "%d " $j
			(( total++ ))
			if (( $total==3 ))
			then 
				(( total=0 ))
				printf "\n"
			fi
		fi
	fi
done


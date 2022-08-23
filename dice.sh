#!/bin/bash 

declare -A dice
dice[1]=0
dice[2]=0
dice[3]=0
dice[4]=0
dice[5]=0
dice[6]=0
#echo ${dice[@]}
while [[ dice[1] -lt 10 || dice[2] -lt 10 || dice[3] -lt 10 || dice[4] -lt 10 || dice[5] -lt 10 || dice[6] -lt 10 ]]
do
	temp=$((RANDOM%6+1))
	case $temp in
		1 ) 
			dice[1]=$((${dice[1]}+1))
		;;
                2 )
                        dice[2]=$((${dice[2]}+1))
                ;;
                3 )
                        dice[3]=$((${dice[3]}+1))
                ;;
		4 )
                        dice[4]=$((${dice[4]}+1))
                ;;
		5 )
                        dice[5]=$((${dice[5]}+1))
                ;;
		6 ) 
			dice[6]=$((${dice[6]}+1))
                ;;
	esac
done

echo ${dice[@]}
max=${dice[1]}
min=${dice[1]}

maxkey=1
minkey=1

for (( i=2; i<=6; i++ ))
do
	a=${dice[$i]}
	echo $a
	if [ $a -lt $min ]
	then
		min=$a
		minkey=$i
	fi
	if [ $a -gt $max ]
        then
                max=$a
		maxkey=$i
        fi
done

echo "Minumum : $minkey"
echo "Maximum : $maxkey"

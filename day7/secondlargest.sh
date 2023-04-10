declare -a rarray=()

for ((i=0;i<=9;i++))
do
	rarray+=($(($RANDOM % 900+1)))
done

a=${rarray[0]}
secondlargest=0
secondsmallest=0
for i in ${rarray[@]}
do
        if [ $i -gt $a ]
        then
                secondlargest=$a
                a=$i
        elif [ $i -gt $secondlargest ] && [ $i -ne $a ]
        then
                secondlargest=$i
        fi
done

for j in ${rarray[@]}
do
	if [ $j -lt $a ]
	then
		secondsmallest=$a
		a=$j
	elif [ $j -lt $secondsmallest ] && [ $j -lt $a ]
	then
		secondsmallest=$j
	fi
done


echo ${rarray[@]}
echo $secondlargest
echo $secondsmallest

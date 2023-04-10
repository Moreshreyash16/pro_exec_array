declare -a arraysort=(56 42 10 32 99 44 52)
: '
for ((i=0;i<${#arraysort[@]};i++))
do
	for ((j=1;j<${#arraysort[@]};j++)
	do
		if [ $i -ne $j ]
		then
			if [ ${arraysort[i]} -le ${arraysort[j]} ]
			then
				temp=${arraysort[i]}
				${arraysort[i]}=${arraysort[j]}
				${arraysort[j]}=$temp
			fi

		fi
	done
done
'
echo ${arraysort[@]}
for ((i=0;i<${#arraysort[@]};i++))
do
        for ((j=1;j<${#arraysort[@]};j++)
        do
                if [ $i -ne $j ]
                then
                        if [ ${arraysort[i]} ->
                        then
                                temp=${arrayso>
                                ${arraysort[i]>
                                ${arraysort[j]>
                        fi

                fi
        done

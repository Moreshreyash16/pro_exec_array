declare -a numarray=()
for ((i=1;i<=100;i++))
do
	if [ $(($i%11)) -eq 0 ]
	then
		numarray+=($i)
	fi
done
echo ${numarray[@]}

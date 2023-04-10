read -p "enter a number" num
declare -a factors=()
while [ $num -ge 1 ]
do
for ((i=2;i<=$num;i++))
do
    if [ $(($num%i)) -eq 0 ]
    then
        num=$(($num/2))
        factors+=($i)
        break
    fi
done
if [ $num -eq 2 ] || [ $num -eq 1 ]
    then
        break
    fi
done
echo ${factors[@]}

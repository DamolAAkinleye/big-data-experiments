#IFS=' '
i=10000000
while read line
do
sum=$((i+=1))
echo $sum","$line>>transactions.csv
done < $1

#!/bin/bash

#RANDOM=$$
for i in `seq $1`
do
	#myUUID=$(uuidgen -t)
        #myMsg="This is a Message"
	#echo "$myUUID,$myMsg">"/app/hduser/flume/data/msg_$myUUID.txt"
	#echo $myUUID,$RANDOM>>CUSTOMER_HOLDINGS.txt
	#echo `shuf -i 10-20 -n 1`>>RANDOM.txt
	#sum=$((1000000 + $i))
	echo `date +"%Y-%m-%d %T"`
done

sleep 3
#set date
dt=`date +%Y%m%d`
#generate uuid for session
uuid=$(uuidgen)
#filename, Kafka Topic and Temp Shard File name
qname=$1
fname=$2
shardfile="/tmp/"$dt"-"$uuid-shard".csv"
outfile=${PWD}"/"$dt"-"$uuid".out"

#create files for shard and out
touch $shardfile
touch $outfile
echo ${uuid}>$outfile
echo "records,shard,start,end">>$outfile
#=====================================================================================================
echo "File Name: "$fname
echo "Publishing to Topic: "$qname
echo "Session: "$uuid
echo "Shard File: "$shardfile
echo "Out File File: "$outfile
#=====================================================================================================
#Get Line/Record Count
nol="$(wc -l "$fname" | cut -d ' ' -f 1)"
echo "No of Records: "$nol
sleep 3
#Start Position
start=1
#Set Random #Records
recs=$(( 1000+RANDOM%5 ))
#End Position
end=$recs
#Set Seq No
seqno=0
#Loop Through Remaining Records
while (( $recs < $nol ))
do
	echo "====================================================================================="
	echo "|Records Remaining: "$nol" | Shard Records: "$recs" | Beginning: "$start" | End: "$end
	echo "====================================================================================="
	echo ${nol}","${recs}","${start}","${end}>>${outfile}
	#First Run
	#seqno=`expr $seqno + 1`
	CMD="sed -n '"$start","$end"p' "${fname}">"${shardfile}
	CMD=${CMD}" && "${SCRIPTS_HOME}"/./kafka-producer-start.sh "${qname}" "${shardfile}
	eval ${CMD}
	#echo "${CMD}"
	#Next Run
	nol=`expr $nol - $recs`
	start=`expr $end + 1`
	recs=$(( 1000+RANDOM%500 ))
	end=`expr $start + $recs - 1`
done

#Process remaining Records
start=`expr $end - $recs + 1`
enof=`expr $start + $nol - 1`
echo "========================================================================================"
echo "Records Remaining: "$nol" | Shard Records: "$nol" | Beginning: "$start" | End: "$enof
echo "========================================================================================"
echo ${nol}","${nol}","${start}","${enof}>>${outfile}
CMD="sed -n '"${start}","${enof}"p' "$fname">"$shardfile
CMD=${CMD}" && "${SCRIPTS_HOME}"/./kafka-producer-start.sh "${qname}" "${shardfile}
eval ${CMD}

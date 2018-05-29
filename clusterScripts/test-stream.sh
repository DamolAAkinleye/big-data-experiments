fileSrc=$1
topicName=$2
sed -n '1,4997p' $fileSrc> shard.csv && ${PWD}/Scripts/./1-kafka-producer-start.sh $topicName shard.csv

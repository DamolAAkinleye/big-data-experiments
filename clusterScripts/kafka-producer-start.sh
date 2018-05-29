topicName=$1
fileSrc=$2
${KAFKA_HOME}/bin/kafka-console-producer.sh --broker-list localhost:9092 --sync --topic $topicName<$fileSrc
#localhost:9092,localhost:9093,localhost:9094
#<$fileSrc

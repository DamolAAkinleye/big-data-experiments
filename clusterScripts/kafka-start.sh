echo "Starting Kafka"
#sleep 3
nohup ${KAFKA_HOME}/bin/kafka-server-start.sh ${KAFKA_HOME}/config/server.properties > /dev/null 2>&1 &
sleep 3
nohup ${KAFKA_HOME}/bin/kafka-server-start.sh ${KAFKA_HOME}/config/server-one.properties > /dev/null 2>&1 &
sleep 3
nohup ${KAFKA_HOME}/bin/kafka-server-start.sh ${KAFKA_HOME}/config/server-two.properties > /dev/null 2>&1 &
sleep 3
jps | sort -g
echo "Listing Brokers"
${KAFKA_HOME}/bin/kafka-topics.sh --list --zookeeper localhost:2181

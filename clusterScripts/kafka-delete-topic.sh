${KAFKA_HOME}/./bin/kafka-run-class.sh kafka.admin.TopicCommand --zookeeper localhost:2181 --delete --topic $1
${KAFKA_HOME}/bin/kafka-topics.sh --list --zookeeper localhost:2181


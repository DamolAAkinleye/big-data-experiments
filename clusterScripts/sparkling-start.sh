${SPARK_HOME}/./sbin/start-all.sh
sleep 3
${SPARK_HOME}/./sbin/start-history-server.sh
sleep 3
#spark-shell --master spark://ANRISU-LNX-03:7077 --jars "${HIVE_HOME}/lib/mysql-connector-java.jar" \
spark-shell \
--jars \
"${HIVE_HOME}/lib/mysql-connector-java.jar" \
"${SPARK_HOME}/jars/spark-csv_2.11-1.5.0.jar" \
"${SPARK_HOME}/jars/spark-xml_2.11-0.4.1.jar" \
--packages \
"org.apache.spark:spark-yarn_2.11:2.2.0",\
"org.apache.spark:spark-streaming_2.11:2.2.0",\
"org.apache.kafka:kafka_2.11:0.10.2.0",\
"org.apache.spark:spark-streaming-kafka-0-10_2.11:2.2.0",\
"org.apache.flume:flume-ng-auth:1.7.0",\
"org.apache.spark:spark-streaming-flume_2.11:2.2.0",\
"org.apache.spark:spark-streaming-flume-sink_2.11:2.2.0",\
"org.apache.bahir:spark-streaming-twitter_2.11:2.2.0",\
"com.datastax.spark:spark-cassandra-connector_2.11:2.0.5" \
--conf "spark.streaming.backpressure.enabled=true" \
--num-executors 20

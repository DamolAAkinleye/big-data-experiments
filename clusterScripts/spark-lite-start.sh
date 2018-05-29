${SPARK_HOME}/./sbin/start-all.sh
sleep 3
${SPARK_HOME}/./sbin/start-history-server.sh
sleep 3
spark-shell --master spark://ANRISU-LNX-03:7077 --jars /usr/local/hive-2.1.1/lib/mysql-connector-java.jar

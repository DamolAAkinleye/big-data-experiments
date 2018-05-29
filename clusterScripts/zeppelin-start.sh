export SPARK_HOME=/usr/local/spark-2.1.0
${ZEPPELIN_HOME}/./bin/zeppelin-daemon.sh start
sleep 3
${ZEPPELIN_HOME}/./bin/zeppelin-daemon.sh status

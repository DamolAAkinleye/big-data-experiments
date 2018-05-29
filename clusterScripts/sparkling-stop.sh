#$SPARK_HOME/./sbin/stop-slave.sh spark://localhost:7077
#$SPARK_HOME/./sbin/stop-master.sh
$SPARK_HOME/./sbin/stop-all.sh
$SPARK_HOME/./sbin/stop-history-server.sh

sleep 3

PIDS=$(ps ax | grep -i 'SparkSubmit' | grep java | grep -v grep | awk '{print $1}')

if [ -z "$PIDS" ]; then
  echo "There are no Spark Processes"
  exit 1
else 
  echo $PIDS  
  kill -s TERM $PIDS
  sleep 3
  echo "Spark Stopped - OK"
fi

sleep 3
jps | sort -g



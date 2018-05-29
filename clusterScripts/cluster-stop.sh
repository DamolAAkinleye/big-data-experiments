$HBASE_HOME/./bin/stop-hbase.sh
sleep 3
$HADOOP_HOME/./sbin/mr-jobhistory-daemon.sh stop historyserver
sleep 3
${HADOOP_HOME}/./sbin/yarn-daemon.sh stop timelineserver
sleep 3
$HADOOP_HOME/./sbin/stop-all.sh
sleep 3
${ZOOKEEPER_HOME}/./bin/zkServer.sh stop
sleep 3
/opt/tomcat-7.0.81/./bin/shutdown.sh
sleep 3
#$PRESTO_HOME/./bin/launcher stop
sleep 3
jps | sort -g | grep RunJar | awk '{print $1}' | xargs kill -s TERM
#sleep 3
#jps | sort -g | grep Application | awk '{print $1}' | xargs kill -s TERM
jps

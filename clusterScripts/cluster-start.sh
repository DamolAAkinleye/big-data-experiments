echo "STARTING TOMCAT===================================================================================================================="
/opt/tomcat-7.0.81/./bin/startup.sh
sleep 3
echo "STARTING ZOOKEEPER================================================================================================================="
${ZOOKEEPER_HOME}/./bin/zkServer.sh start
sleep 3
echo "STARTING HADOOP===================================================================================================================="
#${HADOOP_HOME}/./sbin/start-all.sh
${HADOOP_HOME}/./sbin/start-dfs.sh
sleep 3
${HADOOP_HOME}/./sbin/start-yarn.sh
sleep 3
echo "STARTING REGION-SERVER============================================================================================================="
${HADOOP_HOME}/./sbin/mr-jobhistory-daemon.sh start historyserver
sleep 3
echo "STARTING TIMELINE-SERVER==========================================================================================================="
${HADOOP_HOME}/./sbin/yarn-daemon.sh start timelineserver
sleep 3
echo "STARTING HBASE====================================================================================================================="
#${HBASE_HOME}/./bin/start-hbase.sh
#sleep 3
echo "STARTING HIVE METASTORE - thrift==================================================================================================="
hive --service metastore > /dev/null 2>&1 &
sleep 7
netstat -an | grep 9083
echo "STARTING HIVESERVER2 - thrift======================================================================================================"
hive --service hiveserver2 > /dev/null 2>&1 &
sleep 7
netstat -an | grep 10000
#echo "STARTING PRESTO===================================================================================================================="
#$PRESTO_HOME/./bin/launcher start
echo "EXECUTING jps======================================================================================================================="
jps | sort -g

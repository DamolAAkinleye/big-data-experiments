echo "STARTING CASSANDRA"
${CASSANDRA_HOME}/./bin/cassandra -f > /dev/null 2>&1 &
sleep 3
ps aux | grep CassandraDaemon
ps aux | grep cassandra

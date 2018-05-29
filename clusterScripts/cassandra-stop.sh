PIDS=$(ps ax | grep -i 'CassandraDaemon' | grep java | grep -v grep |awk '{print $1}')
if [ -z "$PIDS" ]; then
  echo "Cassandra not Running"
  #exit 1
else 
  kill -s TERM $PIDS
  sleep 5
  ps ax | grep -i 'CassandraDaemon'
fi

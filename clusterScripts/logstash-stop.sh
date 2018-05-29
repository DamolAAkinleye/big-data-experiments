PIDS=$(ps ax | grep -i 'logstash' | grep java | grep -v grep |awk '{print $1}')

if [ -z "$PIDS" ]; then
  echo "Logstash Not Running"
  #exit 1
else 
  kill -SIGTERM $PIDS
fi

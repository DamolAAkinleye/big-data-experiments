PIDS=$(ps ax | grep kibana | grep java | grep -v grep |awk '{print $1}')

echo ${PIDS}
exit 1

if [ -z "$PIDS" ]; then
  echo "Kibana Not Running"
  #exit 1
else 
  kill -s TERM $PIDS
fi

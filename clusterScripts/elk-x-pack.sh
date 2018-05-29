export LOGSTASH_HOME=/usr/local/logstash-5.4.0-x-pack
export PATH=$PATH:$LOGSTASH_HOME/bin
export ES_HOME=/usr/local/elasticsearch-5.4.0-x-pack
export PATH=$PATH:$ES_HOME/bin
export KIBANA_HOME=/opt/kibana-5.4.0-x-pack
export PATH=$PATH:$KIBANA_HOME/bin

${ES_HOME}/./bin/elasticsearch>/dev/null 2>&1 &
sleep 3
PIDS=$(ps ax | grep -i 'Elasticsearch' | grep java | grep -v grep |awk '{print $1}')
echo 'Elastic Running':${PIDS}
sleep 3

netstat -an | grep :9200
${KIBANA_HOME}/./bin/kibana>/dev/null 2>&1 &
sleep 3
ps ax | grep kibana | head -n1

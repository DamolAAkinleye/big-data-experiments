/opt/oozie-4.3.0/./bin/oozied.sh start
sleep 3
oozie admin -oozie "http://localhost:11000/oozie" -status | grep NORMAL

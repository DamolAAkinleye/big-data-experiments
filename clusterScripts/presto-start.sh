echo "STARTING PRESTO===================================================================================================================="
${PRESTO_HOME}/./bin/launcher start>/dev/null 2>&1 &
sleep 3
${PRESTO_HOME}/./bin/launcher status

$FLUME_HOME/bin/./flume-ng agent \
--name kafka-flume-hdfs-atm-logs \
--conf ${FLUME_HOME}/conf \
--conf-file ${HOME}/Projects/transactions/data/kafka-flume-hdfs.conf \
-Dflume.root.logger=WARN,console

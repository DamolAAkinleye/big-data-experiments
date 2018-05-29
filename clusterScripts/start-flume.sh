#flume-ng agent --name SpoolAgent --conf ${FLUME_HOME} --conf-file ${FLUME_HOME}/conf/my_queue_01.conf -Dflume.root.logger=INFO,console
flume-ng agent --name SpoolAgent --conf ${FLUME_HOME} --conf-file /usr/local/flume-1.7.0/conf/disk_flume_hdfs.conf -Dflume.root.logger=INFO,console


docker start ubuntu-mysql-server &
sleep 2
docker start ubuntu-zookeeper &
sleep 2
docker start ubuntu-hadoop-master &
sleep 2
docker start ubuntu-hadoop-edge &
sleep 2
docker start ubuntu-hadoop-datanode-01 &
sleep 2
docker start ubuntu-hadoop-datanode-02 &
sleep 2
docker start ubuntu-hadoop-datanode-03 &
sleep 2
docker ps


docker stop ubuntu-mysql-server &
sleep 3
docker stop ubuntu-zookeeper &
sleep 3
docker stop ubuntu-hadoop-master &
sleep 3
docker stop ubuntu-hadoop-edge &
sleep 3
docker stop ubuntu-hadoop-datanode-01 &
sleep 3
docker stop ubuntu-hadoop-datanode-02 &
sleep 3
docker stop ubuntu-hadoop-datanode-03 &
sleep 3
docker ps

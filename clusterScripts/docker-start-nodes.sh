echo "172.18.0.33     mysql">>/etc/hosts
echo "172.18.0.21     zookeeper">>/etc/hosts
echo "172.18.0.22     master">>/etc/hosts
echo "172.18.0.23     edge">>/etc/hosts
echo "172.18.0.24     datanode01">>/etc/hosts
echo "172.18.0.25     datanode02">>/etc/hosts
echo "172.18.0.26     datanode03">>/etc/hosts


docker run --net=anrisu-hadoop-network --ip=172.18.0.33 -i -t --hostname=mysql --name=ubuntu-mysql-server -e MYSQL_ROOT_PASSWORD='sqlpwd' -v "/app/docker-host/mysql/storage/data:/var/lib/mysql" ubuntu-mysql-server:build-1.4

docker run --net=anrisu-hadoop-network --ip=172.18.0.21 --hostname=zookeeper -i -t --name=ubuntu-zookeeper --user hduser -v "/app/docker-host/hduser:/app/hduser" -v "/media/hduser:/app/user/storage/hduser" -v "$HOME/Downloads:/home/hduser/Downloads" ubuntu-zookeeper:build-1.4

docker run --net=anrisu-hadoop-network --ip=172.18.0.22 --hostname=master -i -t --name=ubuntu-hadoop-master --user hduser -v "/app/docker-host/hduser:/app/hduser" -v "/media/hduser:/app/user/storage/hduser" -v "$HOME/Downloads:/home/hduser/Downloads" ubuntu-hadoop-master:build-1.4

docker run --net=anrisu-hadoop-network --ip=172.18.0.23 --hostname=edge -i -t --name=ubuntu-hadoop-edge --user hduser -v "/app/docker-host/hduser:/app/hduser" -v "/media/hduser:/app/user/storage/hduser" -v "$HOME/Downloads:/home/hduser/Downloads" ubuntu-hadoop-edge:build-1.4

docker run --net=anrisu-hadoop-network --ip=172.18.0.24 --hostname=datanode01 -i -t --name=ubuntu-hadoop-datanode-01  --user hduser -v "/app/docker-host/hduser:/app/hduser" -v "/media/hduser:/app/user/storage/hduser" -v "$HOME/Downloads:/home/hduser/Downloads" ubuntu-hadoop-datanode-01:build-1.4

docker run --net=anrisu-hadoop-network --ip=172.18.0.25 --hostname=datanode02 -i -t --name=ubuntu-hadoop-datanode-02 --user hduser -v "/app/docker-host/hduser:/app/hduser" -v "/media/hduser:/app/user/storage/hduser" -v "$HOME/Downloads:/home/hduser/Downloads" ubuntu-hadoop-datanode-02:build-1.4

docker run --net=anrisu-hadoop-network --ip=172.18.0.26 --hostname=datanode03 -i -t --name=ubuntu-hadoop-datanode-03 --user hduser -v "/app/docker-host/hduser:/app/hduser" -v "/media/hduser:/app/user/storage/hduser" -v "$HOME/Downloads:/home/hduser/Downloads" ubuntu-hadoop-datanode-03:build-1.4

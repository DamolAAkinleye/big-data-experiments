version=$1

if [ -z "$version" ]
then
      echo "Version is empty"
      exit
else

echo ${version}

docker run --net=anrisu-hadoop-network --ip=172.18.0.33 -i -t --hostname=mysql --name=ubuntu-mysql-server -e MYSQL_ROOT_PASSWORD='sqlpwd' -v "$HOME/Downloads:/home/hduser/Downloads" -v "/app/docker-host/mysql/storage/data:/var/lib/mysql" ubuntu-mysql-server:build-$version

docker run --net=anrisu-hadoop-network --ip=172.18.0.21 --hostname=zookeeper -i -t --name=ubuntu-zookeeper --user hduser -v "$HOME/Downloads:/home/hduser/Downloads" -v "/app/docker-host/hduser:/app/hduser" ubuntu-zookeeper:build-$version

docker run --net=anrisu-hadoop-network --ip=172.18.0.22 --hostname=master -i -t --name=ubuntu-hadoop-master --user hduser -v "$HOME/Downloads:/home/hduser/Downloads" -v "/app/docker-host/hduser:/app/hduser" ubuntu-hadoop-master:build-$version

docker run --net=anrisu-hadoop-network --ip=172.18.0.23 --hostname=edge -i -t --name=ubuntu-hadoop-edge --user hduser -v "$HOME/Downloads:/home/hduser/Downloads" -v "/app/docker-host/hduser:/app/hduser" ubuntu-hadoop-edge:build-$version

docker run --net=anrisu-hadoop-network --ip=172.18.0.24 --hostname=datanode01 -i -t --name=ubuntu-hadoop-datanode-01 --user hduser -v "$HOME/Downloads:/home/hduser/Downloads" -v "/app/docker-host/hduser:/app/hduser" -v "/media/hduser/ELEMENTS-01:/app/hduser/storage/elements-01" -v "/media/hduser/ELEMENTS-02:/app/hduser/storage/elements-02" ubuntu-hadoop-datanode-01:build-$version

docker run --net=anrisu-hadoop-network --ip=172.18.0.25 --hostname=datanode02 -i -t --name=ubuntu-hadoop-datanode-02 --user hduser -v "$HOME/Downloads:/home/hduser/Downloads" -v "/app/docker-host/hduser:/app/hduser" -v "/media/hduser/ELEMENTS-01:/app/hduser/storage/elements-01" -v "/media/hduser/ELEMENTS-02:/app/hduser/storage/elements-02" ubuntu-hadoop-datanode-02:build-$version

docker run --net=anrisu-hadoop-network --ip=172.18.0.26 --hostname=datanode03 -i -t --name=ubuntu-hadoop-datanode-03 --user hduser -v "$HOME/Downloads:/home/hduser/Downloads" -v "/app/docker-host/hduser:/app/hduser" -v "/media/hduser/ELEMENTS-01:/app/hduser/storage/elements-01" -v "/media/hduser/ELEMENTS-02:/app/hduser/storage/elements-02" ubuntu-hadoop-datanode-03:build-$version

fi

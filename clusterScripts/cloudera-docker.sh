docker import - cloudera/quickstart:latest < cloudera-quickstart-vm-*-docker/*.tar
docker run --hostname=quickstart.cloudera --privileged=true -t -i -p 8888 cloudera/quickstart /usr/bin/docker-quickstart


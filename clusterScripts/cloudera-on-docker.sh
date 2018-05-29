VAR1=`docker ps | grep cloudera-on-docker`

if [ -z "${VAR1}" ]
then
docker start -i cloudera-on-docker
sleep 180
docker exec -it -u cloudera cloudera-on-docker bash
else
docker exec -it -u cloudera cloudera-on-docker bash
fi

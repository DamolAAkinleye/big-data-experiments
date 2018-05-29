docker start ubuntu-mysql-server
docker ps
sleep 3
docker start horton-on-docker
sleep 3
docker ps
sleep 3
docker exec -it horton-on-docker /root/start-sandbox-hdp.sh

CONT=$1
TS=`date +"%s"`
docker commit -a anrisu ${CONT} ubuntu-nodejs:${TS}
echo "======================================================================================================================================"
docker ps -a
echo "======================================================================================================================================"
docker images

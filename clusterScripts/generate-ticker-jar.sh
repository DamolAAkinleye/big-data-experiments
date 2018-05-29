for data in `cat daily_trades.sample`
do
sleep 2
echo $data
java -jar kafkaUtils.jar $data
done

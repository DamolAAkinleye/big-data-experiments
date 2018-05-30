sleep 4

while read f1
do        
  curl -XPOST 'http://localhost:9200/atm_logs_v1/atmlocation?pipeline=parse_atm_csv' -H "Content-Type: application/json" -u elastic:changeme -d "{ \"atmlocation\": \"$f1\" }"  
done < atm_logs.csv


while read f1
do        
  curl -XPOST 'http://localhost:9200/subway_info_v1/station?pipeline=parse_nyc_csv' -H "Content-Type: application/json" -u elastic:changeme -d "{ \"station\": \"$f1\" }"  
done < NYC_Transit.csv

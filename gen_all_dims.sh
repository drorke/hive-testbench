DIMS="inventory date_dim time_dim item customer customer_demographics household_demographics customer_address store promotion warehouse ship_mode reason income_band call_center web_page catalog_page web_site"
for table in $DIMS; do
  echo "beeline -u 'jdbc:hive2://ia0304.halxg.cloudera.com:10000/default;principal=hive/ia0304.halxg.cloudera.com@HALXG.CLOUDERA.COM'  -i settings/load-partitioned.sql -f ddl-tpcds/bin_partitioned/${table}.sql 	    --hivevar DB=tpcds_10000_orc_zlib             --hivevar SCALE=10000 	    --hivevar SOURCE=tpcds_10000_string_text --hivevar BUCKETS=1 	    --hivevar RETURN_BUCKETS=1 --hivevar REDUCERS=2500 --hivevar FILE=orc" >> all_dims.sh
done

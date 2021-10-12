beeline -u 'jdbc:hive2://ia0304.halxg.cloudera.com:10000/default;principal=hive/ia0304.halxg.cloudera.com@HALXG.CLOUDERA.COM'  -i settings/load-partitioned.sql -f ddl-tpcds/bin_partitioned/date_dim.sql 	    --hivevar DB=tpcds_bin_partitioned_orc_10000 --hivevar SOURCE=tpcds_10000_text             --hivevar SCALE=10000 	    --hivevar REDUCERS=2500 	    --hivevar FILE=orc 2> /dev/null 1> /dev/null && echo 'Optimizing table date_dim (1/24).'
beeline -u 'jdbc:hive2://ia0304.halxg.cloudera.com:10000/default;principal=hive/ia0304.halxg.cloudera.com@HALXG.CLOUDERA.COM'  -i settings/load-partitioned.sql -f ddl-tpcds/bin_partitioned/time_dim.sql 	    --hivevar DB=tpcds_bin_partitioned_orc_10000 --hivevar SOURCE=tpcds_10000_text             --hivevar SCALE=10000 	    --hivevar REDUCERS=2500 	    --hivevar FILE=orc 2> /dev/null 1> /dev/null && echo 'Optimizing table time_dim (2/24).'
beeline -u 'jdbc:hive2://ia0304.halxg.cloudera.com:10000/default;principal=hive/ia0304.halxg.cloudera.com@HALXG.CLOUDERA.COM'  -i settings/load-partitioned.sql -f ddl-tpcds/bin_partitioned/item.sql 	    --hivevar DB=tpcds_bin_partitioned_orc_10000 --hivevar SOURCE=tpcds_10000_text             --hivevar SCALE=10000 	    --hivevar REDUCERS=2500 	    --hivevar FILE=orc 2> /dev/null 1> /dev/null && echo 'Optimizing table item (3/24).'
beeline -u 'jdbc:hive2://ia0304.halxg.cloudera.com:10000/default;principal=hive/ia0304.halxg.cloudera.com@HALXG.CLOUDERA.COM'  -i settings/load-partitioned.sql -f ddl-tpcds/bin_partitioned/customer.sql 	    --hivevar DB=tpcds_bin_partitioned_orc_10000 --hivevar SOURCE=tpcds_10000_text             --hivevar SCALE=10000 	    --hivevar REDUCERS=2500 	    --hivevar FILE=orc 2> /dev/null 1> /dev/null && echo 'Optimizing table customer (4/24).'
beeline -u 'jdbc:hive2://ia0304.halxg.cloudera.com:10000/default;principal=hive/ia0304.halxg.cloudera.com@HALXG.CLOUDERA.COM'  -i settings/load-partitioned.sql -f ddl-tpcds/bin_partitioned/customer_demographics.sql 	    --hivevar DB=tpcds_bin_partitioned_orc_10000 --hivevar SOURCE=tpcds_10000_text             --hivevar SCALE=10000 	    --hivevar REDUCERS=2500 	    --hivevar FILE=orc 2> /dev/null 1> /dev/null && echo 'Optimizing table customer_demographics (5/24).'
beeline -u 'jdbc:hive2://ia0304.halxg.cloudera.com:10000/default;principal=hive/ia0304.halxg.cloudera.com@HALXG.CLOUDERA.COM'  -i settings/load-partitioned.sql -f ddl-tpcds/bin_partitioned/household_demographics.sql 	    --hivevar DB=tpcds_bin_partitioned_orc_10000 --hivevar SOURCE=tpcds_10000_text             --hivevar SCALE=10000 	    --hivevar REDUCERS=2500 	    --hivevar FILE=orc 2> /dev/null 1> /dev/null && echo 'Optimizing table household_demographics (6/24).'
beeline -u 'jdbc:hive2://ia0304.halxg.cloudera.com:10000/default;principal=hive/ia0304.halxg.cloudera.com@HALXG.CLOUDERA.COM'  -i settings/load-partitioned.sql -f ddl-tpcds/bin_partitioned/customer_address.sql 	    --hivevar DB=tpcds_bin_partitioned_orc_10000 --hivevar SOURCE=tpcds_10000_text             --hivevar SCALE=10000 	    --hivevar REDUCERS=2500 	    --hivevar FILE=orc 2> /dev/null 1> /dev/null && echo 'Optimizing table customer_address (7/24).'
beeline -u 'jdbc:hive2://ia0304.halxg.cloudera.com:10000/default;principal=hive/ia0304.halxg.cloudera.com@HALXG.CLOUDERA.COM'  -i settings/load-partitioned.sql -f ddl-tpcds/bin_partitioned/store.sql 	    --hivevar DB=tpcds_bin_partitioned_orc_10000 --hivevar SOURCE=tpcds_10000_text             --hivevar SCALE=10000 	    --hivevar REDUCERS=2500 	    --hivevar FILE=orc 2> /dev/null 1> /dev/null && echo 'Optimizing table store (8/24).'
beeline -u 'jdbc:hive2://ia0304.halxg.cloudera.com:10000/default;principal=hive/ia0304.halxg.cloudera.com@HALXG.CLOUDERA.COM'  -i settings/load-partitioned.sql -f ddl-tpcds/bin_partitioned/promotion.sql 	    --hivevar DB=tpcds_bin_partitioned_orc_10000 --hivevar SOURCE=tpcds_10000_text             --hivevar SCALE=10000 	    --hivevar REDUCERS=2500 	    --hivevar FILE=orc 2> /dev/null 1> /dev/null && echo 'Optimizing table promotion (9/24).'
beeline -u 'jdbc:hive2://ia0304.halxg.cloudera.com:10000/default;principal=hive/ia0304.halxg.cloudera.com@HALXG.CLOUDERA.COM'  -i settings/load-partitioned.sql -f ddl-tpcds/bin_partitioned/warehouse.sql 	    --hivevar DB=tpcds_bin_partitioned_orc_10000 --hivevar SOURCE=tpcds_10000_text             --hivevar SCALE=10000 	    --hivevar REDUCERS=2500 	    --hivevar FILE=orc 2> /dev/null 1> /dev/null && echo 'Optimizing table warehouse (10/24).'
beeline -u 'jdbc:hive2://ia0304.halxg.cloudera.com:10000/default;principal=hive/ia0304.halxg.cloudera.com@HALXG.CLOUDERA.COM'  -i settings/load-partitioned.sql -f ddl-tpcds/bin_partitioned/ship_mode.sql 	    --hivevar DB=tpcds_bin_partitioned_orc_10000 --hivevar SOURCE=tpcds_10000_text             --hivevar SCALE=10000 	    --hivevar REDUCERS=2500 	    --hivevar FILE=orc 2> /dev/null 1> /dev/null && echo 'Optimizing table ship_mode (11/24).'
beeline -u 'jdbc:hive2://ia0304.halxg.cloudera.com:10000/default;principal=hive/ia0304.halxg.cloudera.com@HALXG.CLOUDERA.COM'  -i settings/load-partitioned.sql -f ddl-tpcds/bin_partitioned/reason.sql 	    --hivevar DB=tpcds_bin_partitioned_orc_10000 --hivevar SOURCE=tpcds_10000_text             --hivevar SCALE=10000 	    --hivevar REDUCERS=2500 	    --hivevar FILE=orc 2> /dev/null 1> /dev/null && echo 'Optimizing table reason (12/24).'
beeline -u 'jdbc:hive2://ia0304.halxg.cloudera.com:10000/default;principal=hive/ia0304.halxg.cloudera.com@HALXG.CLOUDERA.COM'  -i settings/load-partitioned.sql -f ddl-tpcds/bin_partitioned/income_band.sql 	    --hivevar DB=tpcds_bin_partitioned_orc_10000 --hivevar SOURCE=tpcds_10000_text             --hivevar SCALE=10000 	    --hivevar REDUCERS=2500 	    --hivevar FILE=orc 2> /dev/null 1> /dev/null && echo 'Optimizing table income_band (13/24).'
beeline -u 'jdbc:hive2://ia0304.halxg.cloudera.com:10000/default;principal=hive/ia0304.halxg.cloudera.com@HALXG.CLOUDERA.COM'  -i settings/load-partitioned.sql -f ddl-tpcds/bin_partitioned/call_center.sql 	    --hivevar DB=tpcds_bin_partitioned_orc_10000 --hivevar SOURCE=tpcds_10000_text             --hivevar SCALE=10000 	    --hivevar REDUCERS=2500 	    --hivevar FILE=orc 2> /dev/null 1> /dev/null && echo 'Optimizing table call_center (14/24).'
beeline -u 'jdbc:hive2://ia0304.halxg.cloudera.com:10000/default;principal=hive/ia0304.halxg.cloudera.com@HALXG.CLOUDERA.COM'  -i settings/load-partitioned.sql -f ddl-tpcds/bin_partitioned/web_page.sql 	    --hivevar DB=tpcds_bin_partitioned_orc_10000 --hivevar SOURCE=tpcds_10000_text             --hivevar SCALE=10000 	    --hivevar REDUCERS=2500 	    --hivevar FILE=orc 2> /dev/null 1> /dev/null && echo 'Optimizing table web_page (15/24).'
beeline -u 'jdbc:hive2://ia0304.halxg.cloudera.com:10000/default;principal=hive/ia0304.halxg.cloudera.com@HALXG.CLOUDERA.COM'  -i settings/load-partitioned.sql -f ddl-tpcds/bin_partitioned/catalog_page.sql 	    --hivevar DB=tpcds_bin_partitioned_orc_10000 --hivevar SOURCE=tpcds_10000_text             --hivevar SCALE=10000 	    --hivevar REDUCERS=2500 	    --hivevar FILE=orc 2> /dev/null 1> /dev/null && echo 'Optimizing table catalog_page (16/24).'
beeline -u 'jdbc:hive2://ia0304.halxg.cloudera.com:10000/default;principal=hive/ia0304.halxg.cloudera.com@HALXG.CLOUDERA.COM'  -i settings/load-partitioned.sql -f ddl-tpcds/bin_partitioned/web_site.sql 	    --hivevar DB=tpcds_bin_partitioned_orc_10000 --hivevar SOURCE=tpcds_10000_text             --hivevar SCALE=10000 	    --hivevar REDUCERS=2500 	    --hivevar FILE=orc 2> /dev/null 1> /dev/null && echo 'Optimizing table web_site (17/24).'
beeline -u 'jdbc:hive2://ia0304.halxg.cloudera.com:10000/default;principal=hive/ia0304.halxg.cloudera.com@HALXG.CLOUDERA.COM'  -i settings/load-partitioned.sql -f ddl-tpcds/bin_partitioned/store_sales.sql 	    --hivevar DB=tpcds_bin_partitioned_orc_10000             --hivevar SCALE=10000 	    --hivevar SOURCE=tpcds_10000_text --hivevar BUCKETS=1 	    --hivevar RETURN_BUCKETS=1 --hivevar REDUCERS=2500 --hivevar FILE=orc 2> /dev/null 1> /dev/null && echo 'Optimizing table store_sales (18/24).'
beeline -u 'jdbc:hive2://ia0304.halxg.cloudera.com:10000/default;principal=hive/ia0304.halxg.cloudera.com@HALXG.CLOUDERA.COM'  -i settings/load-partitioned.sql -f ddl-tpcds/bin_partitioned/store_returns.sql 	    --hivevar DB=tpcds_bin_partitioned_orc_10000             --hivevar SCALE=10000 	    --hivevar SOURCE=tpcds_10000_text --hivevar BUCKETS=1 	    --hivevar RETURN_BUCKETS=1 --hivevar REDUCERS=2500 --hivevar FILE=orc 2> /dev/null 1> /dev/null && echo 'Optimizing table store_returns (19/24).'
beeline -u 'jdbc:hive2://ia0304.halxg.cloudera.com:10000/default;principal=hive/ia0304.halxg.cloudera.com@HALXG.CLOUDERA.COM'  -i settings/load-partitioned.sql -f ddl-tpcds/bin_partitioned/web_sales.sql 	    --hivevar DB=tpcds_bin_partitioned_orc_10000             --hivevar SCALE=10000 	    --hivevar SOURCE=tpcds_10000_text --hivevar BUCKETS=1 	    --hivevar RETURN_BUCKETS=1 --hivevar REDUCERS=2500 --hivevar FILE=orc 2> /dev/null 1> /dev/null && echo 'Optimizing table web_sales (20/24).'
beeline -u 'jdbc:hive2://ia0304.halxg.cloudera.com:10000/default;principal=hive/ia0304.halxg.cloudera.com@HALXG.CLOUDERA.COM'  -i settings/load-partitioned.sql -f ddl-tpcds/bin_partitioned/web_returns.sql 	    --hivevar DB=tpcds_bin_partitioned_orc_10000             --hivevar SCALE=10000 	    --hivevar SOURCE=tpcds_10000_text --hivevar BUCKETS=1 	    --hivevar RETURN_BUCKETS=1 --hivevar REDUCERS=2500 --hivevar FILE=orc 2> /dev/null 1> /dev/null && echo 'Optimizing table web_returns (21/24).'
beeline -u 'jdbc:hive2://ia0304.halxg.cloudera.com:10000/default;principal=hive/ia0304.halxg.cloudera.com@HALXG.CLOUDERA.COM'  -i settings/load-partitioned.sql -f ddl-tpcds/bin_partitioned/catalog_sales.sql 	    --hivevar DB=tpcds_bin_partitioned_orc_10000             --hivevar SCALE=10000 	    --hivevar SOURCE=tpcds_10000_text --hivevar BUCKETS=1 	    --hivevar RETURN_BUCKETS=1 --hivevar REDUCERS=2500 --hivevar FILE=orc 2> /dev/null 1> /dev/null && echo 'Optimizing table catalog_sales (22/24).'
beeline -u 'jdbc:hive2://ia0304.halxg.cloudera.com:10000/default;principal=hive/ia0304.halxg.cloudera.com@HALXG.CLOUDERA.COM'  -i settings/load-partitioned.sql -f ddl-tpcds/bin_partitioned/catalog_returns.sql 	    --hivevar DB=tpcds_bin_partitioned_orc_10000             --hivevar SCALE=10000 	    --hivevar SOURCE=tpcds_10000_text --hivevar BUCKETS=1 	    --hivevar RETURN_BUCKETS=1 --hivevar REDUCERS=2500 --hivevar FILE=orc 2> /dev/null 1> /dev/null && echo 'Optimizing table catalog_returns (23/24).'
beeline -u 'jdbc:hive2://ia0304.halxg.cloudera.com:10000/default;principal=hive/ia0304.halxg.cloudera.com@HALXG.CLOUDERA.COM'  -i settings/load-partitioned.sql -f ddl-tpcds/bin_partitioned/inventory.sql 	    --hivevar DB=tpcds_bin_partitioned_orc_10000             --hivevar SCALE=10000 	    --hivevar SOURCE=tpcds_10000_text --hivevar BUCKETS=1 	    --hivevar RETURN_BUCKETS=1 --hivevar REDUCERS=2500 --hivevar FILE=orc 2> /dev/null 1> /dev/null && echo 'Optimizing table inventory (24/24).'

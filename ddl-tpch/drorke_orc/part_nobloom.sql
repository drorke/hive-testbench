create database if not exists ${DB};
use ${DB};

drop table if exists part;

create table part (P_PARTKEY BIGINT,
 P_NAME STRING,
 P_MFGR STRING,
 P_BRAND STRING,
 P_TYPE STRING,
 P_SIZE INT,
 P_CONTAINER STRING,
 P_RETAILPRICE DOUBLE,
 P_COMMENT STRING) 
stored as ${FILE}
;

INSERT OVERWRITE TABLE part
select 
 P_PARTKEY,
 P_NAME,
 P_MFGR,
 P_BRAND, 
 P_TYPE,
 P_SIZE,
 P_CONTAINER,
 P_RETAILPRICE,
 P_COMMENT
 from ${SOURCE}.part
;


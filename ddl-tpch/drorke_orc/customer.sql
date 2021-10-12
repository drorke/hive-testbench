create database if not exists ${DB};
use ${DB};

drop table if exists customer;

create table customer (C_CUSTKEY BIGINT,
 C_NAME STRING,
 C_ADDRESS STRING,
 C_NATIONKEY BIGINT,
 C_PHONE STRING,
 C_ACCTBAL DOUBLE,
 C_MKTSEGMENT STRING,
 C_COMMENT STRING)
stored as ${FILE}
;

ALTER TABLE customer SET TBLPROPERTIES('orc.bloom.filter.columns'='*');

INSERT OVERWRITE TABLE customer
select 
 C_CUSTKEY ,
 C_NAME,
 C_ADDRESS,
 C_NATIONKEY,
 C_PHONE,
 C_ACCTBAL,
 C_MKTSEGMENT,
 C_COMMENT
 from ${SOURCE}.customer
;

create database if not exists ${DB};
use ${DB};

drop table if exists supplier;

create table supplier (S_SUPPKEY BIGINT,
 S_NAME STRING,
 S_ADDRESS STRING,
 S_NATIONKEY BIGINT,
 S_PHONE STRING,
 S_ACCTBAL DOUBLE,
 S_COMMENT STRING) 
stored as ${FILE}
;

ALTER TABLE supplier SET TBLPROPERTIES('orc.bloom.filter.columns'='*');

INSERT OVERWRITE TABLE supplier
select 
 S_SUPPKEY,
 S_NAME,
 S_ADDRESS,
 S_NATIONKEY,
 S_PHONE,
 S_ACCTBAL,
 S_COMMENT
 from ${SOURCE}.supplier
;

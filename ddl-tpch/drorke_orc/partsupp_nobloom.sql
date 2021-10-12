create database if not exists ${DB};
use ${DB};

drop table if exists partsupp;

create table partsupp (PS_PARTKEY BIGINT,
 PS_SUPPKEY BIGINT,
 PS_AVAILQTY INT,
 PS_SUPPLYCOST DOUBLE,
 PS_COMMENT STRING)
stored as ${FILE}
;

INSERT OVERWRITE TABLE partsupp
select 
 PS_PARTKEY,
 PS_SUPPKEY,
 PS_AVAILQTY,
 PS_SUPPLYCOST,
 PS_COMMENT
 from ${SOURCE}.partsupp
;

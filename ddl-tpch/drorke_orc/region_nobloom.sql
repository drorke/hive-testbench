create database if not exists ${DB};
use ${DB};

drop table if exists region;

create table region 
(R_REGIONKEY BIGINT,
 R_NAME STRING,
 R_COMMENT STRING)
stored as ${FILE}
;

INSERT OVERWRITE TABLE region
select 
 R_REGIONKEY,
 R_NAME,
 R_COMMENT
 from ${SOURCE}.region
;


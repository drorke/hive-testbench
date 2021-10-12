create database if not exists ${DB};
use ${DB};

drop table if exists nation;

create table nation 
(N_NATIONKEY BIGINT,
 N_NAME STRING,
 N_REGIONKEY BIGINT,
 N_COMMENT STRING)
stored as ${FILE}
;

ALTER TABLE nation SET TBLPROPERTIES('orc.bloom.filter.columns'='*');

INSERT OVERWRITE TABLE nation
select 
 N_NATIONKEY,
 N_NAME,
 N_REGIONKEY,
 N_COMMENT STRING
 from ${SOURCE}.nation
;


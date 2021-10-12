create database if not exists ${DB};
use ${DB};

drop table if exists lineitem;

create table lineitem 
(L_ORDERKEY BIGINT,
 L_PARTKEY BIGINT,
 L_SUPPKEY BIGINT,
 L_LINENUMBER INT,
 L_QUANTITY DOUBLE,
 L_EXTENDEDPRICE DOUBLE,
 L_DISCOUNT DOUBLE,
 L_TAX DOUBLE,
 L_RETURNFLAG STRING,
 L_LINESTATUS STRING,
 L_SHIPDATE STRING,
 L_COMMITDATE STRING,
 L_RECEIPTDATE STRING,
 L_SHIPINSTRUCT STRING,
 L_SHIPMODE STRING,
 L_COMMENT STRING)
stored as ${FILE}
;

ALTER TABLE lineitem SET TBLPROPERTIES('orc.bloom.filter.columns'='*');

INSERT OVERWRITE TABLE lineitem
select 
L_ORDERKEY ,
 L_PARTKEY ,
 L_SUPPKEY ,
 L_LINENUMBER ,
 L_QUANTITY ,
 L_EXTENDEDPRICE ,
 L_DISCOUNT ,
 L_TAX ,
 L_RETURNFLAG ,
 L_LINESTATUS ,
 L_SHIPDATE,
 L_COMMITDATE ,
 L_RECEIPTDATE ,
 L_SHIPINSTRUCT ,
 L_SHIPMODE ,
 L_COMMENT
 from ${SOURCE}.lineitem
;


create database if not exists ${DB};
use ${DB};

drop table if exists reason;

create table reason (
      r_reason_sk bigint
,     r_reason_id string
,     r_reason_desc string
)
stored as ${FILE};

insert overwrite table reason
select r_reason_sk
,     r_reason_id
,     r_reason_desc
from ${SOURCE}.reason;

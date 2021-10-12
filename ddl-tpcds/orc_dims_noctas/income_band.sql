create database if not exists ${DB};
use ${DB};

drop table if exists income_band;

create table income_band (
      ib_income_band_sk bigint
,     ib_lower_bound int
,     ib_upper_bound int
)
stored as ${FILE};

insert overwrite table income_band
select ib_income_band_sk
,     ib_lower_bound
,     ib_upper_bound
from ${SOURCE}.income_band;

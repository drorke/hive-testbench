create database if not exists ${DB};
use ${DB};

drop table if exists household_demographics;

create table household_demographics (
      hd_demo_sk bigint
,     hd_income_band_sk bigint
,     hd_buy_potential string
,     hd_dep_count int
,     hd_vehicle_count int
)
stored as ${FILE};

insert overwrite table household_demographics
select hd_demo_sk
,     hd_income_band_sk
,     hd_buy_potential
,     hd_dep_count
,     hd_vehicle_count
from ${SOURCE}.household_demographics;

create database if not exists ${DB};
use ${DB};

drop table if exists time_dim;

create table time_dim (
      t_time_sk bigint
,     t_time_id string
,     t_time int
,     t_hour int
,     t_minute int
,     t_second int
,     t_am_pm string
,     t_shift string
,     t_sub_shift string
,     t_meal_time string
)
stored as ${FILE};

insert overwrite table time_dim
select t_time_sk
,     t_time_id
,     t_time
,     t_hour
,     t_minute
,     t_second
,     t_am_pm
,     t_shift
,     t_sub_shift
,     t_meal_time
from ${SOURCE}.time_dim;

create database if not exists ${DB};
use ${DB};

drop table if exists date_dim;

create table date_dim (
      d_date_sk bigint
,     d_date_id string
,     d_date date
,     d_month_seq int
,     d_week_seq int
,     d_quarter_seq int
,     d_year int
,     d_dow int
,     d_moy int
,     d_dom int
,     d_qoy int
,     d_fy_year int
,     d_fy_quarter_seq int
,     d_fy_week_seq int
,     d_day_name string
,     d_quarter_name string
,     d_holiday string
,     d_weekend string
,     d_following_holiday string
,     d_first_dom int
,     d_last_dom int
,     d_same_day_ly int
,     d_same_day_lq int
,     d_current_day string
,     d_current_week string
,     d_current_month string
,     d_current_quarter string
,     d_current_year string
)
stored as ${FILE};

insert overwrite table date_dim
select d_date_sk
,     d_date_id
,     d_date
,     d_month_seq
,     d_week_seq
,     d_quarter_seq
,     d_year
,     d_dow
,     d_moy
,     d_dom
,     d_qoy
,     d_fy_year
,     d_fy_quarter_seq
,     d_fy_week_seq
,     d_day_name
,     d_quarter_name
,     d_holiday
,     d_weekend
,     d_following_holiday
,     d_first_dom
,     d_last_dom
,     d_same_day_ly
,     d_same_day_lq
,     d_current_day
,     d_current_week
,     d_current_month
,     d_current_quarter
,     d_current_year
from ${SOURCE}.date_dim;

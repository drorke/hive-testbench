create database if not exists ${DB};
use ${DB};

drop table if exists call_center;

create table call_center (
      cc_call_center_sk bigint
,     cc_call_center_id string
,     cc_rec_start_date date
,     cc_rec_end_date date
,     cc_closed_date_sk bigint
,     cc_open_date_sk bigint
,     cc_name string
,     cc_class string
,     cc_employees int
,     cc_sq_ft int
,     cc_hours string
,     cc_manager string
,     cc_mkt_id int
,     cc_mkt_class string
,     cc_mkt_desc string
,     cc_market_manager string
,     cc_division int
,     cc_division_name string
,     cc_company int
,     cc_company_name string
,     cc_street_number string
,     cc_street_name string
,     cc_street_type string
,     cc_suite_number string
,     cc_city string
,     cc_county string
,     cc_state string
,     cc_zip string
,     cc_country string
,     cc_gmt_offset decimal(5,2)
,     cc_tax_percentage decimal(5,2)
)
stored as ${FILE};

insert overwrite table call_center
select cc_call_center_sk
,     cc_call_center_id
,     cc_rec_start_date
,     cc_rec_end_date
,     cc_closed_date_sk
,     cc_open_date_sk
,     cc_name
,     cc_class
,     cc_employees
,     cc_sq_ft
,     cc_hours
,     cc_manager
,     cc_mkt_id
,     cc_mkt_class
,     cc_mkt_desc
,     cc_market_manager
,     cc_division
,     cc_division_name
,     cc_company
,     cc_company_name
,     cc_street_number
,     cc_street_name
,     cc_street_type
,     cc_suite_number
,     cc_city
,     cc_county
,     cc_state
,     cc_zip
,     cc_country
,     cc_gmt_offset
,     cc_tax_percentage
from ${SOURCE}.call_center;

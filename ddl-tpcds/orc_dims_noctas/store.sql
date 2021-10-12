create database if not exists ${DB};
use ${DB};

drop table if exists store;

create table store (
      s_store_sk bigint
,     s_store_id string
,     s_rec_start_date date
,     s_rec_end_date date
,     s_closed_date_sk bigint
,     s_store_name string
,     s_number_employees int
,     s_floor_space int
,     s_hours string
,     S_manager string
,     S_market_id int
,     S_geography_class string
,     S_market_desc string
,     s_market_manager string
,     s_division_id int
,     s_division_name string
,     s_company_id int
,     s_company_name string
,     s_street_number string
,     s_street_name string
,     s_street_type string
,     s_suite_number string
,     s_city string
,     s_county string
,     s_state string
,     s_zip string
,     s_country string
,     s_gmt_offset decimal(5,2)
,     s_tax_percentage decimal(5,2)
)
stored as ${FILE};

insert overwrite table store
select s_store_sk
,     s_store_id
,     s_rec_start_date
,     s_rec_end_date
,     s_closed_date_sk
,     s_store_name
,     s_number_employees
,     s_floor_space
,     s_hours
,     S_manager
,     S_market_id
,     S_geography_class
,     S_market_desc
,     s_market_manager
,     s_division_id
,     s_division_name
,     s_company_id
,     s_company_name
,     s_street_number
,     s_street_name
,     s_street_type
,     s_suite_number
,     s_city
,     s_county
,     s_state
,     s_zip
,     s_country
,     s_gmt_offset
,     s_tax_percentage
from ${SOURCE}.store;

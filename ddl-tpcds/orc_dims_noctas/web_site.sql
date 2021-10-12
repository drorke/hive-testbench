create database if not exists ${DB};
use ${DB};

drop table if exists web_site;

create table web_site (
      web_site_sk bigint
,     web_site_id string
,     web_rec_start_date date
,     web_rec_end_date date
,     web_name string
,     web_open_date_sk bigint
,     web_close_date_sk bigint
,     web_class string
,     web_manager string
,     web_mkt_id int
,     web_mkt_class string
,     web_mkt_desc string
,     web_market_manager string
,     web_company_id int
,     web_company_name string
,     web_street_number string
,     web_street_name string
,     web_street_type string
,     web_suite_number string
,     web_city string
,     web_county string
,     web_state string
,     web_zip string
,     web_country string
,     web_gmt_offset decimal(5,2)  
,     web_tax_percentage decimal(5,2)
)
stored as ${FILE};

insert overwrite table web_site
select web_site_sk
,     web_site_id
,     web_rec_start_date
,     web_rec_end_date
,     web_name
,     web_open_date_sk
,     web_close_date_sk
,     web_class
,     web_manager
,     web_mkt_id
,     web_mkt_class
,     web_mkt_desc
,     web_market_manager
,     web_company_id
,     web_company_name
,     web_street_number
,     web_street_name
,     web_street_type
,     web_suite_number
,     web_city
,     web_county
,     web_state
,     web_zip
,     web_country
,     web_gmt_offset
,     web_tax_percentage
from ${SOURCE}.web_site;

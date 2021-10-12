create database if not exists ${DB};
use ${DB};

drop table if exists customer_address;

create table customer_address (
      ca_address_sk bigint
,     ca_address_id string
,     ca_street_number string
,     ca_street_name string
,     ca_street_type string
,     ca_suite_number string
,     ca_city string
,     ca_county string
,     ca_state string
,     ca_zip string
,     ca_country string
,     ca_gmt_offset decimal(5,2)
,     ca_location_type string
)
stored as ${FILE};

insert overwrite table customer_address
select ca_address_sk
,     ca_address_id
,     ca_street_number
,     ca_street_name
,     ca_street_type
,     ca_suite_number
,     ca_city
,     ca_county
,     ca_state
,     ca_zip
,     ca_country
,     ca_gmt_offset
,     ca_location_type
from ${SOURCE}.customer_address;

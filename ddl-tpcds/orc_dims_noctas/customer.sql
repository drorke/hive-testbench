create database if not exists ${DB};
use ${DB};

drop table if exists customer;

create table customer (
      c_customer_sk bigint
,     c_customer_id string
,     c_current_cdemo_sk bigint
,     c_current_hdemo_sk bigint
,     c_current_addr_sk bigint
,     c_first_shipto_date_sk bigint
,     c_first_sales_date_sk bigint
,     c_salutation string
,     c_first_name string
,     c_last_name string
,     c_preferred_cust_flag string
,     c_birth_day int
,     c_birth_month int
,     c_birth_year int
,     c_birth_country string
,     c_login string
,     c_email_address string
,     c_last_review_date_sk bigint
)
stored as ${FILE};

insert overwrite table customer
select c_customer_sk
,     c_customer_id
,     c_current_cdemo_sk
,     c_current_hdemo_sk
,     c_current_addr_sk
,     c_first_shipto_date_sk
,     c_first_sales_date_sk
,     c_salutation
,     c_first_name
,     c_last_name
,     c_preferred_cust_flag
,     c_birth_day
,     c_birth_month
,     c_birth_year
,     c_birth_country
,     c_login
,     c_email_address
,     c_last_review_date_sk
from ${SOURCE}.customer;

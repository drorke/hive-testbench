create database if not exists ${DB};
use ${DB};

drop table if exists customer_demographics;

create table customer_demographics (
      cd_demo_sk bigint
,     cd_gender string
,     cd_marital_status string
,     cd_education_status string
,     cd_purchase_estimate int
,     cd_credit_rating string
,     cd_dep_count int
,     cd_dep_employed_count int
,     cd_dep_college_count int
)
stored as ${FILE};

insert overwrite table customer_demographics
select cd_demo_sk
,     cd_gender
,     cd_marital_status
,     cd_education_status
,     cd_purchase_estimate
,     cd_credit_rating
,     cd_dep_count
,     cd_dep_employed_count
,     cd_dep_college_count
from ${SOURCE}.customer_demographics;

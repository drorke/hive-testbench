create database if not exists ${DB};
use ${DB};

drop table if exists catalog_page;

create table catalog_page (
      cp_catalog_page_sk bigint
,     cp_catalog_page_id string
,     cp_start_date_sk bigint
,     cp_end_date_sk bigint
,     cp_department string
,     cp_catalog_number int
,     cp_catalog_page_number int
,     cp_description string
,     cp_type string
)
stored as ${FILE};

insert overwrite table catalog_page
select cp_catalog_page_sk
,     cp_catalog_page_id
,     cp_start_date_sk
,     cp_end_date_sk
,     cp_department 
,     cp_catalog_number
,     cp_catalog_page_number
,     cp_description
,     cp_type
from ${SOURCE}.catalog_page;

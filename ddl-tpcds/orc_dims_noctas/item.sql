create database if not exists ${DB};
use ${DB};

drop table if exists item;

create table item (
      i_item_sk bigint
,     i_item_id string
,     i_rec_start_date date
,     i_rec_end_date date
,     i_item_desc string
,     i_current_price decimal(7,2)
,     i_wholesale_cost decimal(7,2)
,     i_brand_id int
,     i_brand string
,     i_class_id int
,     i_class string
,     i_category_id int
,     i_category string
,     i_manufact_id int
,     i_manufact string
,     i_size string
,     i_formulation string
,     i_color string
,     i_units string
,     i_container string
,     i_manager_id int
,     i_product_name string
)
stored as ${FILE};

insert overwrite table item
select i_item_sk
,     i_item_id
,     i_rec_start_date
,     i_rec_end_date
,     i_item_desc
,     i_current_price
,     i_wholesale_cost
,     i_brand_id
,     i_brand
,     i_class_id
,     i_class
,     i_category_id
,     i_category
,     i_manufact_id
,     i_manufact
,     i_size
,     i_formulation
,     i_color
,     i_units
,     i_container
,     i_manager_id
,     i_product_name
from ${SOURCE}.item;

create database if not exists ${DB};
use ${DB};

drop table if exists promotion;

create table promotion (
      p_promo_sk bigint
,     p_promo_id string
,     p_start_date_sk bigint
,     p_end_date_sk bigint
,     p_item_sk bigint
,     p_cost decimal(15,2)
,     p_response_target int
,     p_promo_name string
,     p_channel_dmail string
,     p_channel_email string
,     p_channel_catalog string
,     p_channel_tv string
,     p_channel_radio string
,     p_channel_press string
,     p_channel_event string
,     p_channel_demo string
,     p_channel_details string
,     p_purpose string
,     p_discount_active string
)
stored as ${FILE};

insert overwrite table promotion
select p_promo_sk
,     p_promo_id
,     p_start_date_sk
,     p_end_date_sk
,     p_item_sk
,     p_cost
,     p_response_target
,     p_promo_name
,     p_channel_dmail
,     p_channel_email
,     p_channel_catalog
,     p_channel_tv
,     p_channel_radio
,     p_channel_press
,     p_channel_event
,     p_channel_demo
,     p_channel_details
,     p_purpose
,     p_discount_active
from ${SOURCE}.promotion;

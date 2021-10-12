create database if not exists ${DB};
use ${DB};

drop table if exists ship_mode;

create table ship_mode (
      sm_ship_mode_sk bigint
,     sm_ship_mode_id string
,     sm_type string
,     sm_code string
,     sm_carrier string
,     sm_contract string
)
stored as ${FILE};

insert overwrite table ship_mode
select sm_ship_mode_sk
,     sm_ship_mode_id
,     sm_type
,     sm_code
,     sm_carrier
,     sm_contract
from ${SOURCE}.ship_mode;

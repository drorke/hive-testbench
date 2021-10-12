create database if not exists ${DB};
use ${DB};

drop table if exists inventory;

create table inventory (
    inv_date_sk bigint,
    inv_item_sk bigint,
    inv_warehouse_sk bigint,
    inv_quantity_on_hand int
)
stored as ${FILE};

insert overwrite table inventory
select  inv_date_sk,
        inv_item_sk,
        inv_warehouse_sk,
        inv_quantity_on_hand
from ${SOURCE}.inventory;

create database if not exists ${DB};
use ${DB};

drop table if exists TABLE;

create table TABLE (
    COLUMNS_WITH_TYPES
)
stored as ${FILE};

insert overwrite table TABLE
select
    COLUMNS
from ${SOURCE}.TABLE;

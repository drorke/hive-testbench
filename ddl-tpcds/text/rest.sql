create database if not exists ${DB};
use ${DB};

-- Table<web_page (14 cols)>

drop table if exists web_page;
create external table if not exists web_page(
      wp_web_page_sk bigint
,     wp_web_page_id string
,     wp_rec_start_date date
,     wp_rec_end_date date
,     wp_creation_date_sk bigint
,     wp_access_date_sk bigint
,     wp_autogen_flag string
,     wp_customer_sk bigint
,     wp_url string
,     wp_type string
,     wp_char_count int
,     wp_link_count int
,     wp_image_count int
,     wp_max_ad_count int
)
row format delimited fields terminated by '|'
location '${LOCATION}/web_page'
tblproperties ('serialization.null.format'='');

-- Table<warehouse (14 cols)>

drop table if exists warehouse;
create external table if not exists warehouse(
      w_warehouse_sk bigint
,     w_warehouse_id string
,     w_warehouse_name string
,     w_warehouse_sq_ft int
,     w_street_number string
,     w_street_name string
,     w_street_type string
,     w_suite_number string
,     w_city string
,     w_county string
,     w_state string
,     w_zip string
,     w_country string
,     w_gmt_offset decimal(5,2)
)
row format delimited fields terminated by '|'
location '${LOCATION}/warehouse'
tblproperties ('serialization.null.format'='');

-- Table<customer (18 cols)>

drop table if exists customer;
create external table if not exists customer(
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
row format delimited fields terminated by '|'
location '${LOCATION}/customer'
tblproperties ('serialization.null.format'='');

-- Table<customer_address (13 cols)>

drop table if exists customer_address;
create external table if not exists customer_address(
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
row format delimited fields terminated by '|'
location '${LOCATION}/customer_address'
tblproperties ('serialization.null.format'='');

-- Table<customer_demographics (9 cols)>

drop table if exists customer_demographics;
create external table if not exists customer_demographics(
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
row format delimited fields terminated by '|'
location '${LOCATION}/customer_demographics'
tblproperties ('serialization.null.format'='');

-- Table<date_dim (28 cols)>

drop table if exists date_dim;
create external table if not exists date_dim(
      d_date_sk bigint
,     d_date_id string
,     d_date date
,     d_month_seq int
,     d_week_seq int
,     d_quarter_seq int
,     d_year int
,     d_dow int
,     d_moy int
,     d_dom int
,     d_qoy int
,     d_fy_year int
,     d_fy_quarter_seq int
,     d_fy_week_seq int
,     d_day_name string
,     d_quarter_name string
,     d_holiday string
,     d_weekend string
,     d_following_holiday string
,     d_first_dom int
,     d_last_dom int
,     d_same_day_ly int
,     d_same_day_lq int
,     d_current_day string
,     d_current_week string
,     d_current_month string
,     d_current_quarter string
,     d_current_year string
)
row format delimited fields terminated by '|'
location '${LOCATION}/date_dim'
tblproperties ('serialization.null.format'='');

-- Table<household_demographics (5 cols)>

drop table if exists household_demographics;
create external table if not exists household_demographics(
      hd_demo_sk bigint
,     hd_income_band_sk bigint
,     hd_buy_potential string
,     hd_dep_count int
,     hd_vehicle_count int
)
row format delimited fields terminated by '|'
location '${LOCATION}/household_demographics'
tblproperties ('serialization.null.format'='');

-- Table<item (22 cols)>

drop table if exists item;
create external table if not exists item(
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
row format delimited fields terminated by '|'
location '${LOCATION}/item'
tblproperties ('serialization.null.format'='');

-- Table<income_band (3 cols)>

drop table if exists income_band;
create external table if not exists income_band(
      ib_income_band_sk bigint
,     ib_lower_bound int
,     ib_upper_bound int
)
row format delimited fields terminated by '|'
location '${LOCATION}/income_band';

-- Table<promotion (19 cols)>

drop table if exists promotion;
create external table if not exists promotion(
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
row format delimited fields terminated by '|'
location '${LOCATION}/promotion'
tblproperties ('serialization.null.format'='');

-- Table<reason (3 cols)>

drop table if exists reason;
create external table if not exists reason(
      r_reason_sk bigint
,     r_reason_id string
,     r_reason_desc string
)
row format delimited fields terminated by '|'
location '${LOCATION}/reason'
tblproperties ('serialization.null.format'='');

-- Table<ship_mode (6 cols)>

drop table if exists ship_mode;
create external table if not exists ship_mode(
      sm_ship_mode_sk bigint
,     sm_ship_mode_id string
,     sm_type string
,     sm_code string
,     sm_carrier string
,     sm_contract string
)
row format delimited fields terminated by '|'
location '${LOCATION}/ship_mode'
tblproperties ('serialization.null.format'='');

-- Table<time_dim (10 cols)>

drop table if exists time_dim;
create external table if not exists time_dim(
      t_time_sk bigint
,     t_time_id string
,     t_time int
,     t_hour int
,     t_minute int
,     t_second int
,     t_am_pm string
,     t_shift string
,     t_sub_shift string
,     t_meal_time string
)
row format delimited fields terminated by '|'
location '${LOCATION}/time_dim'
tblproperties ('serialization.null.format'='');



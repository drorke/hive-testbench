set hivevar:DB=tpcds_10000_orc_snappy;

alter table customer_address add constraint ${DB}_pk_ca primary key (ca_address_sk) disable novalidate rely;
alter table customer_demographics add constraint ${DB}_pk_cd primary key (cd_demo_sk) disable novalidate rely;
alter table date_dim add constraint ${DB}_pk_dd primary key (d_date_sk) disable novalidate rely;
alter table warehouse add constraint ${DB}_pk_w primary key (w_warehouse_sk) disable novalidate rely;
alter table ship_mode add constraint ${DB}_pk_sm primary key (sm_ship_mode_sk) disable novalidate rely;
alter table time_dim add constraint ${DB}_pk_td primary key (t_time_sk) disable novalidate rely;
alter table reason add constraint ${DB}_pk_r primary key (r_reason_sk) disable novalidate rely;
alter table income_band add constraint ${DB}_pk_ib primary key (ib_income_band_sk) disable novalidate rely;
alter table item add constraint ${DB}_pk_i primary key (i_item_sk) disable novalidate rely;
alter table store add constraint ${DB}_pk_s primary key (s_store_sk) disable novalidate rely;
alter table call_center add constraint ${DB}_pk_cc primary key (cc_call_center_sk) disable novalidate rely;
alter table customer add constraint ${DB}_pk_c primary key (c_customer_sk) disable novalidate rely;
alter table web_site add constraint ${DB}_pk_ws primary key (web_site_sk) disable novalidate rely;
alter table store_returns add constraint ${DB}_pk_sr primary key (sr_item_sk, sr_ticket_number) disable novalidate rely;
alter table household_demographics add constraint ${DB}_pk_hd primary key (hd_demo_sk) disable novalidate rely;
alter table web_page add constraint ${DB}_pk_wp primary key (wp_web_page_sk) disable novalidate rely;
alter table promotion add constraint ${DB}_pk_p primary key (p_promo_sk) disable novalidate rely;
alter table catalog_page add constraint ${DB}_pk_cp primary key (cp_catalog_page_sk) disable novalidate rely;
-- partition_col case
alter table inventory add constraint ${DB}_pk_in primary key (inv_date_sk, inv_item_sk, inv_warehouse_sk) disable novalidate rely;
alter table catalog_returns add constraint ${DB}_pk_cr primary key (cr_item_sk, cr_order_number) disable novalidate rely;
alter table web_returns add constraint ${DB}_pk_wr primary key (wr_item_sk, wr_order_number) disable novalidate rely;
alter table web_sales add constraint ${DB}_pk_ws2 primary key (ws_item_sk, ws_order_number) disable novalidate rely;
alter table catalog_sales add constraint ${DB}_pk_cs primary key (cs_item_sk, cs_order_number) disable novalidate rely;
alter table store_sales add constraint ${DB}_pk_ss primary key (ss_item_sk, ss_ticket_number) disable novalidate rely;

alter table call_center add constraint ${DB}_cc_d1 foreign key  (cc_closed_date_sk) references date_dim (d_date_sk) disable novalidate rely;
alter table call_center add constraint ${DB}_cc_d2 foreign key  (cc_open_date_sk) references date_dim (d_date_sk) disable novalidate rely;
alter table catalog_page add constraint ${DB}_cp_d1 foreign key  (cp_end_date_sk) references date_dim (d_date_sk) disable novalidate rely;
alter table catalog_page add constraint ${DB}_cp_d2 foreign key  (cp_start_date_sk) references date_dim (d_date_sk) disable novalidate rely;
alter table catalog_returns add constraint ${DB}_cr_cc foreign key  (cr_call_center_sk) references call_center (cc_call_center_sk) disable novalidate rely;
alter table catalog_returns add constraint ${DB}_cr_cp foreign key  (cr_catalog_page_sk) references catalog_page (cp_catalog_page_sk) disable novalidate rely;
alter table catalog_returns add constraint ${DB}_cr_cs foreign key  (cr_item_sk, cr_order_number) references catalog_sales (cs_item_sk, cs_order_number) disable novalidate rely;
alter table catalog_returns add constraint ${DB}_cr_i foreign key  (cr_item_sk) references item (i_item_sk) disable novalidate rely;
alter table catalog_returns add constraint ${DB}_cr_r foreign key  (cr_reason_sk) references reason (r_reason_sk) disable novalidate rely;
alter table catalog_returns add constraint ${DB}_cr_a1 foreign key  (cr_refunded_addr_sk) references customer_address (ca_address_sk) disable novalidate rely;
alter table catalog_returns add constraint ${DB}_cr_cd1 foreign key  (cr_refunded_cdemo_sk) references customer_demographics (cd_demo_sk) disable novalidate rely;
alter table catalog_returns add constraint ${DB}_cr_c1 foreign key  (cr_refunded_customer_sk) references customer (c_customer_sk) disable novalidate rely;
alter table catalog_returns add constraint ${DB}_cr_hd1 foreign key  (cr_refunded_hdemo_sk) references household_demographics (hd_demo_sk) disable novalidate rely;
-- partition_col case
alter table catalog_returns add constraint ${DB}_cr_d1 foreign key  (cr_returned_date_sk) references date_dim (d_date_sk) disable novalidate rely;
alter table catalog_returns add constraint ${DB}_cr_t foreign key  (cr_returned_time_sk) references time_dim (t_time_sk) disable novalidate rely;
alter table catalog_returns add constraint ${DB}_cr_a2 foreign key  (cr_returning_addr_sk) references customer_address (ca_address_sk) disable novalidate rely;
alter table catalog_returns add constraint ${DB}_cr_cd2 foreign key  (cr_returning_cdemo_sk) references customer_demographics (cd_demo_sk) disable novalidate rely;
alter table catalog_returns add constraint ${DB}_cr_c2 foreign key  (cr_returning_customer_sk) references customer (c_customer_sk) disable novalidate rely;
alter table catalog_returns add constraint ${DB}_cr_hd2 foreign key  (cr_returning_hdemo_sk) references household_demographics (hd_demo_sk) disable novalidate rely;
-- alter table catalog_returns add constraint ${DB}_cr_d2 foreign key  (cr_ship_date_sk) references date_dim (d_date_sk) disable novalidate rely;
alter table catalog_returns add constraint ${DB}_cr_sm foreign key  (cr_ship_mode_sk) references ship_mode (sm_ship_mode_sk) disable novalidate rely;
alter table catalog_returns add constraint ${DB}_cr_w2 foreign key  (cr_warehouse_sk) references warehouse (w_warehouse_sk) disable novalidate rely;
alter table catalog_sales add constraint ${DB}_cs_b_a foreign key  (cs_bill_addr_sk) references customer_address (ca_address_sk) disable novalidate rely;
alter table catalog_sales add constraint ${DB}_cs_b_cd foreign key  (cs_bill_cdemo_sk) references customer_demographics (cd_demo_sk) disable novalidate rely;
alter table catalog_sales add constraint ${DB}_cs_b_c foreign key  (cs_bill_customer_sk) references customer (c_customer_sk) disable novalidate rely;
alter table catalog_sales add constraint ${DB}_cs_b_hd foreign key  (cs_bill_hdemo_sk) references household_demographics (hd_demo_sk) disable novalidate rely;
alter table catalog_sales add constraint ${DB}_cs_cc foreign key  (cs_call_center_sk) references call_center (cc_call_center_sk) disable novalidate rely;
alter table catalog_sales add constraint ${DB}_cs_cp foreign key  (cs_catalog_page_sk) references catalog_page (cp_catalog_page_sk) disable novalidate rely;
alter table catalog_sales add constraint ${DB}_cs_i foreign key  (cs_item_sk) references item (i_item_sk) disable novalidate rely;
alter table catalog_sales add constraint ${DB}_cs_p foreign key  (cs_promo_sk) references promotion (p_promo_sk) disable novalidate rely;
alter table catalog_sales add constraint ${DB}_cs_s_a foreign key  (cs_ship_addr_sk) references customer_address (ca_address_sk) disable novalidate rely;
alter table catalog_sales add constraint ${DB}_cs_s_cd foreign key  (cs_ship_cdemo_sk) references customer_demographics (cd_demo_sk) disable novalidate rely;
alter table catalog_sales add constraint ${DB}_cs_s_c foreign key  (cs_ship_customer_sk) references customer (c_customer_sk) disable novalidate rely;
alter table catalog_sales add constraint ${DB}_cs_d1 foreign key  (cs_ship_date_sk) references date_dim (d_date_sk) disable novalidate rely;
alter table catalog_sales add constraint ${DB}_cs_s_hd foreign key  (cs_ship_hdemo_sk) references household_demographics (hd_demo_sk) disable novalidate rely;
alter table catalog_sales add constraint ${DB}_cs_sm foreign key  (cs_ship_mode_sk) references ship_mode (sm_ship_mode_sk) disable novalidate rely;
-- partition_col case
alter table catalog_sales add constraint ${DB}_cs_d2 foreign key  (cs_sold_date_sk) references date_dim (d_date_sk) disable novalidate rely;
alter table catalog_sales add constraint ${DB}_cs_t foreign key  (cs_sold_time_sk) references time_dim (t_time_sk) disable novalidate rely;
alter table catalog_sales add constraint ${DB}_cs_w foreign key  (cs_warehouse_sk) references warehouse (w_warehouse_sk) disable novalidate rely;
alter table customer add constraint ${DB}_c_a foreign key  (c_current_addr_sk) references customer_address (ca_address_sk) disable novalidate rely;
alter table customer add constraint ${DB}_c_cd foreign key  (c_current_cdemo_sk) references customer_demographics (cd_demo_sk) disable novalidate rely;
alter table customer add constraint ${DB}_c_hd foreign key  (c_current_hdemo_sk) references household_demographics (hd_demo_sk) disable novalidate rely;
alter table customer add constraint ${DB}_c_fsd foreign key  (c_first_sales_date_sk) references date_dim (d_date_sk) disable novalidate rely;
alter table customer add constraint ${DB}_c_fsd2 foreign key  (c_first_shipto_date_sk) references date_dim (d_date_sk) disable novalidate rely;
alter table household_demographics add constraint ${DB}_hd_ib foreign key  (hd_income_band_sk) references income_band (ib_income_band_sk) disable novalidate rely;
-- partition_col case
alter table inventory add constraint ${DB}_inv_d foreign key  (inv_date_sk) references date_dim (d_date_sk) disable novalidate rely;
alter table inventory add constraint ${DB}_inv_i foreign key  (inv_item_sk) references item (i_item_sk) disable novalidate rely;
alter table inventory add constraint ${DB}_inv_w foreign key  (inv_warehouse_sk) references warehouse (w_warehouse_sk) disable novalidate rely;
alter table promotion add constraint ${DB}_p_end_date foreign key  (p_end_date_sk) references date_dim (d_date_sk) disable novalidate rely;
alter table promotion add constraint ${DB}_p_i foreign key  (p_item_sk) references item (i_item_sk) disable novalidate rely;
alter table promotion add constraint ${DB}_p_start_date foreign key  (p_start_date_sk) references date_dim (d_date_sk) disable novalidate rely;
alter table store add constraint ${DB}_s_close_date foreign key  (s_closed_date_sk) references date_dim (d_date_sk) disable novalidate rely;
alter table store_returns add constraint ${DB}_sr_a foreign key  (sr_addr_sk) references customer_address (ca_address_sk) disable novalidate rely;
alter table store_returns add constraint ${DB}_sr_cd foreign key  (sr_cdemo_sk) references customer_demographics (cd_demo_sk) disable novalidate rely;
alter table store_returns add constraint ${DB}_sr_c foreign key  (sr_customer_sk) references customer (c_customer_sk) disable novalidate rely;
alter table store_returns add constraint ${DB}_sr_hd foreign key  (sr_hdemo_sk) references household_demographics (hd_demo_sk) disable novalidate rely;
alter table store_returns add constraint ${DB}_sr_i foreign key  (sr_item_sk) references item (i_item_sk) disable novalidate rely;
alter table store_returns add constraint ${DB}_sr_r foreign key  (sr_reason_sk) references reason (r_reason_sk) disable novalidate rely;
-- partition_col case
alter table store_returns add constraint ${DB}_sr_ret_d foreign key  (sr_returned_date_sk) references date_dim (d_date_sk) disable novalidate rely;
alter table store_returns add constraint ${DB}_sr_t foreign key  (sr_return_time_sk) references time_dim (t_time_sk) disable novalidate rely;
alter table store_returns add constraint ${DB}_sr_s foreign key  (sr_store_sk) references store (s_store_sk) disable novalidate rely;
alter table store_returns add constraint ${DB}_sr_ss foreign key  (sr_item_sk, sr_ticket_number) references store_sales (ss_item_sk, ss_ticket_number) disable novalidate rely;
alter table store_sales add constraint ${DB}_ss_a foreign key  (ss_addr_sk) references customer_address (ca_address_sk) disable novalidate rely;
alter table store_sales add constraint ${DB}_ss_cd foreign key  (ss_cdemo_sk) references customer_demographics (cd_demo_sk) disable novalidate rely;
alter table store_sales add constraint ${DB}_ss_c foreign key  (ss_customer_sk) references customer (c_customer_sk) disable novalidate rely;
alter table store_sales add constraint ${DB}_ss_hd foreign key  (ss_hdemo_sk) references household_demographics (hd_demo_sk) disable novalidate rely;
alter table store_sales add constraint ${DB}_ss_i foreign key  (ss_item_sk) references item (i_item_sk) disable novalidate rely;
alter table store_sales add constraint ${DB}_ss_p foreign key  (ss_promo_sk) references promotion (p_promo_sk) disable novalidate rely;
-- partition_col case
alter table store_sales add constraint ${DB}_ss_d foreign key  (ss_sold_date_sk) references date_dim (d_date_sk) disable novalidate rely;
alter table store_sales add constraint ${DB}_ss_t foreign key  (ss_sold_time_sk) references time_dim (t_time_sk) disable novalidate rely;
alter table store_sales add constraint ${DB}_ss_s foreign key  (ss_store_sk) references store (s_store_sk) disable novalidate rely;
alter table web_page add constraint ${DB}_wp_ad foreign key  (wp_access_date_sk) references date_dim (d_date_sk) disable novalidate rely;
alter table web_page add constraint ${DB}_wp_cd foreign key  (wp_creation_date_sk) references date_dim (d_date_sk) disable novalidate rely;
alter table web_returns add constraint ${DB}_wr_i foreign key  (wr_item_sk) references item (i_item_sk) disable novalidate rely;
alter table web_returns add constraint ${DB}_wr_r foreign key  (wr_reason_sk) references reason (r_reason_sk) disable novalidate rely;
alter table web_returns add constraint ${DB}_wr_ref_a foreign key  (wr_refunded_addr_sk) references customer_address (ca_address_sk) disable novalidate rely;
alter table web_returns add constraint ${DB}_wr_ref_cd foreign key  (wr_refunded_cdemo_sk) references customer_demographics (cd_demo_sk) disable novalidate rely;
alter table web_returns add constraint ${DB}_wr_ref_c foreign key  (wr_refunded_customer_sk) references customer (c_customer_sk) disable novalidate rely;
alter table web_returns add constraint ${DB}_wr_ref_hd foreign key  (wr_refunded_hdemo_sk) references household_demographics (hd_demo_sk) disable novalidate rely;
-- partition_col case
alter table web_returns add constraint ${DB}_wr_ret_d foreign key  (wr_returned_date_sk) references date_dim (d_date_sk) disable novalidate rely;
alter table web_returns add constraint ${DB}_wr_ret_t foreign key  (wr_returned_time_sk) references time_dim (t_time_sk) disable novalidate rely;
alter table web_returns add constraint ${DB}_wr_ret_a foreign key  (wr_returning_addr_sk) references customer_address (ca_address_sk) disable novalidate rely;
alter table web_returns add constraint ${DB}_wr_ret_cd foreign key  (wr_returning_cdemo_sk) references customer_demographics (cd_demo_sk) disable novalidate rely;
alter table web_returns add constraint ${DB}_wr_ret_c foreign key  (wr_returning_customer_sk) references customer (c_customer_sk) disable novalidate rely;
alter table web_returns add constraint ${DB}_wr_ret_hd foreign key  (wr_returning_hdemo_sk) references household_demographics (hd_demo_sk) disable novalidate rely;
alter table web_returns add constraint ${DB}_wr_ws foreign key  (wr_item_sk, wr_order_number) references web_sales (ws_item_sk, ws_order_number) disable novalidate rely;
alter table web_returns add constraint ${DB}_wr_wp foreign key  (wr_web_page_sk) references web_page (wp_web_page_sk) disable novalidate rely;
alter table web_sales add constraint ${DB}_ws_b_a foreign key  (ws_bill_addr_sk) references customer_address (ca_address_sk) disable novalidate rely;
alter table web_sales add constraint ${DB}_ws_b_cd foreign key  (ws_bill_cdemo_sk) references customer_demographics (cd_demo_sk) disable novalidate rely;
alter table web_sales add constraint ${DB}_ws_b_c foreign key  (ws_bill_customer_sk) references customer (c_customer_sk) disable novalidate rely;
alter table web_sales add constraint ${DB}_ws_b_hd foreign key  (ws_bill_hdemo_sk) references household_demographics (hd_demo_sk) disable novalidate rely;
alter table web_sales add constraint ${DB}_ws_i foreign key  (ws_item_sk) references item (i_item_sk) disable novalidate rely;
alter table web_sales add constraint ${DB}_ws_p foreign key  (ws_promo_sk) references promotion (p_promo_sk) disable novalidate rely;
alter table web_sales add constraint ${DB}_ws_s_a foreign key  (ws_ship_addr_sk) references customer_address (ca_address_sk) disable novalidate rely;
alter table web_sales add constraint ${DB}_ws_s_cd foreign key  (ws_ship_cdemo_sk) references customer_demographics (cd_demo_sk) disable novalidate rely;
alter table web_sales add constraint ${DB}_ws_s_c foreign key  (ws_ship_customer_sk) references customer (c_customer_sk) disable novalidate rely;
alter table web_sales add constraint ${DB}_ws_s_d foreign key  (ws_ship_date_sk) references date_dim (d_date_sk) disable novalidate rely;
alter table web_sales add constraint ${DB}_ws_s_hd foreign key  (ws_ship_hdemo_sk) references household_demographics (hd_demo_sk) disable novalidate rely;
alter table web_sales add constraint ${DB}_ws_sm foreign key  (ws_ship_mode_sk) references ship_mode (sm_ship_mode_sk) disable novalidate rely;
-- partition_col case
alter table web_sales add constraint ${DB}_ws_d2 foreign key  (ws_sold_date_sk) references date_dim (d_date_sk) disable novalidate rely;
alter table web_sales add constraint ${DB}_ws_t foreign key  (ws_sold_time_sk) references time_dim (t_time_sk) disable novalidate rely;
alter table web_sales add constraint ${DB}_ws_w2 foreign key  (ws_warehouse_sk) references warehouse (w_warehouse_sk) disable novalidate rely;
alter table web_sales add constraint ${DB}_ws_wp foreign key  (ws_web_page_sk) references web_page (wp_web_page_sk) disable novalidate rely;
alter table web_sales add constraint ${DB}_ws_ws foreign key  (ws_web_site_sk) references web_site (web_site_sk) disable novalidate rely;
alter table web_site add constraint ${DB}_web_d1 foreign key  (web_close_date_sk) references date_dim (d_date_sk) disable novalidate rely;
alter table web_site add constraint ${DB}_web_d2 foreign key (web_open_date_sk) references date_dim (d_date_sk) disable novalidate rely;

-- Not null constraints
alter table store change column s_store_id s_store_id varchar(16) constraint ${DB}_strid_nn not null disable novalidate rely;
alter table call_center change column cc_call_center_id cc_call_center_id varchar(16) constraint ${DB}_ccid_nn not null disable novalidate rely;
alter table catalog_page change column cp_catalog_page_id cp_catalog_page_id varchar(16) constraint ${DB}_cpid_nn not null disable novalidate rely;
alter table web_site change column web_site_id web_site_id varchar(16) constraint ${DB}_wsid_nn not null disable novalidate rely;
alter table web_page change column wp_web_page_id wp_web_page_id varchar(16) constraint ${DB}_wpid_nn not null disable novalidate rely;
alter table warehouse change column w_warehouse_id w_warehouse_id varchar(16) constraint ${DB}_wid_nn not null disable novalidate rely;
alter table customer change column c_customer_id c_customer_id varchar(16) constraint ${DB}_cid_nn not null disable novalidate rely;
alter table customer_address change column ca_address_id ca_address_id varchar(16) constraint ${DB}_caid_nn not null disable novalidate rely;
alter table date_dim change column d_date_id d_date_id varchar(16) constraint ${DB}_did_nn not null disable novalidate rely;
alter table item change column i_item_id i_item_id varchar(16) constraint ${DB}_itid_nn not null disable novalidate rely;
alter table promotion change column p_promo_id p_promo_id varchar(16) constraint ${DB}_pid_nn not null disable novalidate rely;
alter table reason change column r_reason_id r_reason_id varchar(16) constraint ${DB}_rid_nn not null disable novalidate rely;
alter table ship_mode change column sm_ship_mode_id sm_ship_mode_id varchar(16) constraint ${DB}_smid_nn not null disable novalidate rely;
alter table time_dim change column t_time_id t_time_id varchar(16) constraint ${DB}_tid_nn not null disable novalidate rely;

-- Unique constraints
-- Not clear whether a strict reading of the TPC-DS spec guarantees c_customer_id is uniuqe but seems like a reasonable assumption
-- and verified it's unique for actual TPC generated data.  Would we benefit from other unique constraints?
alter table customer change column c_customer_id c_customer_id varchar(16) constraint ${DB}_cid_uq unique disable novalidate rely;

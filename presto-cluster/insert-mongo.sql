-- This file is generated automatically, don't modify.

CREATE TABLE sf1.call_center AS 
SELECT 
    CAST(cc_call_center_sk AS BIGINT) AS cc_call_center_sk,
    CAST(cc_call_center_id AS VARCHAR) AS cc_call_center_id,
    CAST(cc_rec_start_date AS VARCHAR) AS cc_rec_start_date,
    CAST(cc_rec_end_date AS VARCHAR) AS cc_rec_end_date,
    CAST(cc_closed_date_sk AS BIGINT) AS cc_closed_date_sk,
    CAST(cc_open_date_sk AS BIGINT) AS cc_open_date_sk,
    CAST(cc_name AS VARCHAR) AS cc_name,
    CAST(cc_class AS VARCHAR) AS cc_class,
    CAST(cc_employees AS BIGINT) AS cc_employees,
    CAST(cc_sq_ft AS BIGINT) AS cc_sq_ft,
    CAST(cc_hours AS VARCHAR) AS cc_hours,
    CAST(cc_manager AS VARCHAR) AS cc_manager,
    CAST(cc_mkt_id AS BIGINT) AS cc_mkt_id,
    CAST(cc_mkt_class AS VARCHAR) AS cc_mkt_class,
    CAST(cc_mkt_desc AS VARCHAR) AS cc_mkt_desc,
    CAST(cc_market_manager AS VARCHAR) AS cc_market_manager,
    CAST(cc_division AS BIGINT) AS cc_division,
    CAST(cc_division_name AS VARCHAR) AS cc_division_name,
    CAST(cc_company AS BIGINT) AS cc_company,
    CAST(cc_company_name AS VARCHAR) AS cc_company_name,
    CAST(cc_street_number AS VARCHAR) AS cc_street_number,
    CAST(cc_street_name AS VARCHAR) AS cc_street_name,
    CAST(cc_street_type AS VARCHAR) AS cc_street_type,
    CAST(cc_suite_number AS VARCHAR) AS cc_suite_number,
    CAST(cc_city AS VARCHAR) AS cc_city,
    CAST(cc_county AS VARCHAR) AS cc_county,
    CAST(cc_state AS VARCHAR) AS cc_state,
    CAST(cc_zip AS VARCHAR) AS cc_zip,
    CAST(cc_country AS VARCHAR) AS cc_country,
    CAST(cc_gmt_offset AS DOUBLE) AS cc_gmt_offset,
    CAST(cc_tax_percentage AS DOUBLE) AS cc_tax_percentage
FROM tpcds.sf1.call_center;

CREATE TABLE sf1.catalog_page AS 
SELECT 
    CAST(cp_catalog_page_sk AS BIGINT) AS cp_catalog_page_sk,
    CAST(cp_catalog_page_id AS VARCHAR) AS cp_catalog_page_id,
    CAST(cp_start_date_sk AS BIGINT) AS cp_start_date_sk,
    CAST(cp_end_date_sk AS BIGINT) AS cp_end_date_sk,
    CAST(cp_department AS VARCHAR) AS cp_department,
    CAST(cp_catalog_number AS BIGINT) AS cp_catalog_number,
    CAST(cp_catalog_page_number AS BIGINT) AS cp_catalog_page_number,
    CAST(cp_description AS VARCHAR) AS cp_description,
    CAST(cp_type AS VARCHAR) AS cp_type
FROM tpcds.sf1.catalog_page;

CREATE TABLE sf1.catalog_returns AS 
SELECT 
    CAST(cr_returned_date_sk AS BIGINT) AS cr_returned_date_sk,
    CAST(cr_returned_time_sk AS BIGINT) AS cr_returned_time_sk,
    CAST(cr_item_sk AS BIGINT) AS cr_item_sk,
    CAST(cr_refunded_customer_sk AS BIGINT) AS cr_refunded_customer_sk,
    CAST(cr_refunded_cdemo_sk AS BIGINT) AS cr_refunded_cdemo_sk,
    CAST(cr_refunded_hdemo_sk AS BIGINT) AS cr_refunded_hdemo_sk,
    CAST(cr_refunded_addr_sk AS BIGINT) AS cr_refunded_addr_sk,
    CAST(cr_returning_customer_sk AS BIGINT) AS cr_returning_customer_sk,
    CAST(cr_returning_cdemo_sk AS BIGINT) AS cr_returning_cdemo_sk,
    CAST(cr_returning_hdemo_sk AS BIGINT) AS cr_returning_hdemo_sk,
    CAST(cr_returning_addr_sk AS BIGINT) AS cr_returning_addr_sk,
    CAST(cr_call_center_sk AS BIGINT) AS cr_call_center_sk,
    CAST(cr_catalog_page_sk AS BIGINT) AS cr_catalog_page_sk,
    CAST(cr_ship_mode_sk AS BIGINT) AS cr_ship_mode_sk,
    CAST(cr_warehouse_sk AS BIGINT) AS cr_warehouse_sk,
    CAST(cr_reason_sk AS BIGINT) AS cr_reason_sk,
    CAST(cr_order_number AS BIGINT) AS cr_order_number,
    CAST(cr_return_quantity AS BIGINT) AS cr_return_quantity,
    CAST(cr_return_amount AS DOUBLE) AS cr_return_amount,
    CAST(cr_return_tax AS DOUBLE) AS cr_return_tax,
    CAST(cr_return_amt_inc_tax AS DOUBLE) AS cr_return_amt_inc_tax,
    CAST(cr_fee AS DOUBLE) AS cr_fee,
    CAST(cr_return_ship_cost AS DOUBLE) AS cr_return_ship_cost,
    CAST(cr_refunded_cash AS DOUBLE) AS cr_refunded_cash,
    CAST(cr_reversed_charge AS DOUBLE) AS cr_reversed_charge,
    CAST(cr_store_credit AS DOUBLE) AS cr_store_credit,
    CAST(cr_net_loss AS DOUBLE) AS cr_net_loss
FROM tpcds.sf1.catalog_returns;

CREATE TABLE sf1.catalog_sales AS 
SELECT 
    CAST(cs_sold_date_sk AS BIGINT) AS cs_sold_date_sk,
    CAST(cs_sold_time_sk AS BIGINT) AS cs_sold_time_sk,
    CAST(cs_ship_date_sk AS BIGINT) AS cs_ship_date_sk,
    CAST(cs_bill_customer_sk AS BIGINT) AS cs_bill_customer_sk,
    CAST(cs_bill_cdemo_sk AS BIGINT) AS cs_bill_cdemo_sk,
    CAST(cs_bill_hdemo_sk AS BIGINT) AS cs_bill_hdemo_sk,
    CAST(cs_bill_addr_sk AS BIGINT) AS cs_bill_addr_sk,
    CAST(cs_ship_customer_sk AS BIGINT) AS cs_ship_customer_sk,
    CAST(cs_ship_cdemo_sk AS BIGINT) AS cs_ship_cdemo_sk,
    CAST(cs_ship_hdemo_sk AS BIGINT) AS cs_ship_hdemo_sk,
    CAST(cs_ship_addr_sk AS BIGINT) AS cs_ship_addr_sk,
    CAST(cs_call_center_sk AS BIGINT) AS cs_call_center_sk,
    CAST(cs_catalog_page_sk AS BIGINT) AS cs_catalog_page_sk,
    CAST(cs_ship_mode_sk AS BIGINT) AS cs_ship_mode_sk,
    CAST(cs_warehouse_sk AS BIGINT) AS cs_warehouse_sk,
    CAST(cs_item_sk AS BIGINT) AS cs_item_sk,
    CAST(cs_promo_sk AS BIGINT) AS cs_promo_sk,
    CAST(cs_order_number AS BIGINT) AS cs_order_number,
    CAST(cs_quantity AS BIGINT) AS cs_quantity,
    CAST(cs_wholesale_cost AS DOUBLE) AS cs_wholesale_cost,
    CAST(cs_list_price AS DOUBLE) AS cs_list_price,
    CAST(cs_sales_price AS DOUBLE) AS cs_sales_price,
    CAST(cs_ext_discount_amt AS DOUBLE) AS cs_ext_discount_amt,
    CAST(cs_ext_sales_price AS DOUBLE) AS cs_ext_sales_price,
    CAST(cs_ext_wholesale_cost AS DOUBLE) AS cs_ext_wholesale_cost,
    CAST(cs_ext_list_price AS DOUBLE) AS cs_ext_list_price,
    CAST(cs_ext_tax AS DOUBLE) AS cs_ext_tax,
    CAST(cs_coupon_amt AS DOUBLE) AS cs_coupon_amt,
    CAST(cs_ext_ship_cost AS DOUBLE) AS cs_ext_ship_cost,
    CAST(cs_net_paid AS DOUBLE) AS cs_net_paid,
    CAST(cs_net_paid_inc_tax AS DOUBLE) AS cs_net_paid_inc_tax,
    CAST(cs_net_paid_inc_ship AS DOUBLE) AS cs_net_paid_inc_ship,
    CAST(cs_net_paid_inc_ship_tax AS DOUBLE) AS cs_net_paid_inc_ship_tax,
    CAST(cs_net_profit AS DOUBLE) AS cs_net_profit
FROM tpcds.sf1.catalog_sales;

CREATE TABLE sf1.customer AS 
SELECT 
    CAST(c_customer_sk AS BIGINT) AS c_customer_sk,
    CAST(c_customer_id AS VARCHAR) AS c_customer_id,
    CAST(c_current_cdemo_sk AS BIGINT) AS c_current_cdemo_sk,
    CAST(c_current_hdemo_sk AS BIGINT) AS c_current_hdemo_sk,
    CAST(c_current_addr_sk AS BIGINT) AS c_current_addr_sk,
    CAST(c_first_shipto_date_sk AS BIGINT) AS c_first_shipto_date_sk,
    CAST(c_first_sales_date_sk AS BIGINT) AS c_first_sales_date_sk,
    CAST(c_salutation AS VARCHAR) AS c_salutation,
    CAST(c_first_name AS VARCHAR) AS c_first_name,
    CAST(c_last_name AS VARCHAR) AS c_last_name,
    CAST(c_preferred_cust_flag AS VARCHAR) AS c_preferred_cust_flag,
    CAST(c_birth_day AS BIGINT) AS c_birth_day,
    CAST(c_birth_month AS BIGINT) AS c_birth_month,
    CAST(c_birth_year AS BIGINT) AS c_birth_year,
    CAST(c_birth_country AS VARCHAR) AS c_birth_country,
    CAST(c_login AS VARCHAR) AS c_login,
    CAST(c_email_address AS VARCHAR) AS c_email_address,
    CAST(c_last_review_date_sk AS BIGINT) AS c_last_review_date_sk
FROM tpcds.sf1.customer;

CREATE TABLE sf1.customer_address AS 
SELECT 
    CAST(ca_address_sk AS BIGINT) AS ca_address_sk,
    CAST(ca_address_id AS VARCHAR) AS ca_address_id,
    CAST(ca_street_number AS VARCHAR) AS ca_street_number,
    CAST(ca_street_name AS VARCHAR) AS ca_street_name,
    CAST(ca_street_type AS VARCHAR) AS ca_street_type,
    CAST(ca_suite_number AS VARCHAR) AS ca_suite_number,
    CAST(ca_city AS VARCHAR) AS ca_city,
    CAST(ca_county AS VARCHAR) AS ca_county,
    CAST(ca_state AS VARCHAR) AS ca_state,
    CAST(ca_zip AS VARCHAR) AS ca_zip,
    CAST(ca_country AS VARCHAR) AS ca_country,
    CAST(ca_gmt_offset AS DOUBLE) AS ca_gmt_offset,
    CAST(ca_location_type AS VARCHAR) AS ca_location_type
FROM tpcds.sf1.customer_address;

CREATE TABLE sf1.customer_demographics AS 
SELECT 
    CAST(cd_demo_sk AS BIGINT) AS cd_demo_sk,
    CAST(cd_gender AS VARCHAR) AS cd_gender,
    CAST(cd_marital_status AS VARCHAR) AS cd_marital_status,
    CAST(cd_education_status AS VARCHAR) AS cd_education_status,
    CAST(cd_purchase_estimate AS BIGINT) AS cd_purchase_estimate,
    CAST(cd_credit_rating AS VARCHAR) AS cd_credit_rating,
    CAST(cd_dep_count AS BIGINT) AS cd_dep_count,
    CAST(cd_dep_employed_count AS BIGINT) AS cd_dep_employed_count,
    CAST(cd_dep_college_count AS BIGINT) AS cd_dep_college_count
FROM tpcds.sf1.customer_demographics;

CREATE TABLE sf1.date_dim AS 
SELECT 
    CAST(d_date_sk AS BIGINT) AS d_date_sk,
    CAST(d_date_id AS VARCHAR) AS d_date_id,
    CAST(d_date AS VARCHAR) AS d_date,
    CAST(d_month_seq AS BIGINT) AS d_month_seq,
    CAST(d_week_seq AS BIGINT) AS d_week_seq,
    CAST(d_quarter_seq AS BIGINT) AS d_quarter_seq,
    CAST(d_year AS BIGINT) AS d_year,
    CAST(d_dow AS BIGINT) AS d_dow,
    CAST(d_moy AS BIGINT) AS d_moy,
    CAST(d_dom AS BIGINT) AS d_dom,
    CAST(d_qoy AS BIGINT) AS d_qoy,
    CAST(d_fy_year AS BIGINT) AS d_fy_year,
    CAST(d_fy_quarter_seq AS BIGINT) AS d_fy_quarter_seq,
    CAST(d_fy_week_seq AS BIGINT) AS d_fy_week_seq,
    CAST(d_day_name AS VARCHAR) AS d_day_name,
    CAST(d_quarter_name AS VARCHAR) AS d_quarter_name,
    CAST(d_holiday AS VARCHAR) AS d_holiday,
    CAST(d_weekend AS VARCHAR) AS d_weekend,
    CAST(d_following_holiday AS VARCHAR) AS d_following_holiday,
    CAST(d_first_dom AS BIGINT) AS d_first_dom,
    CAST(d_last_dom AS BIGINT) AS d_last_dom,
    CAST(d_same_day_ly AS BIGINT) AS d_same_day_ly,
    CAST(d_same_day_lq AS BIGINT) AS d_same_day_lq,
    CAST(d_current_day AS VARCHAR) AS d_current_day,
    CAST(d_current_week AS VARCHAR) AS d_current_week,
    CAST(d_current_month AS VARCHAR) AS d_current_month,
    CAST(d_current_quarter AS VARCHAR) AS d_current_quarter,
    CAST(d_current_year AS VARCHAR) AS d_current_year
FROM tpcds.sf1.date_dim;

CREATE TABLE sf1.household_demographics AS 
SELECT 
    CAST(hd_demo_sk AS BIGINT) AS hd_demo_sk,
    CAST(hd_income_band_sk AS BIGINT) AS hd_income_band_sk,
    CAST(hd_buy_potential AS VARCHAR) AS hd_buy_potential,
    CAST(hd_dep_count AS BIGINT) AS hd_dep_count,
    CAST(hd_vehicle_count AS BIGINT) AS hd_vehicle_count
FROM tpcds.sf1.household_demographics;

CREATE TABLE sf1.income_band AS 
SELECT 
    CAST(ib_income_band_sk AS BIGINT) AS ib_income_band_sk,
    CAST(ib_lower_bound AS BIGINT) AS ib_lower_bound,
    CAST(ib_upper_bound AS BIGINT) AS ib_upper_bound
FROM tpcds.sf1.income_band;

CREATE TABLE sf1.inventory AS 
SELECT 
    CAST(inv_date_sk AS BIGINT) AS inv_date_sk,
    CAST(inv_item_sk AS BIGINT) AS inv_item_sk,
    CAST(inv_warehouse_sk AS BIGINT) AS inv_warehouse_sk,
    CAST(inv_quantity_on_hand AS BIGINT) AS inv_quantity_on_hand
FROM tpcds.sf1.inventory;

CREATE TABLE sf1.item AS 
SELECT 
    CAST(i_item_sk AS BIGINT) AS i_item_sk,
    CAST(i_item_id AS VARCHAR) AS i_item_id,
    CAST(i_rec_start_date AS VARCHAR) AS i_rec_start_date,
    CAST(i_rec_end_date AS VARCHAR) AS i_rec_end_date,
    CAST(i_item_desc AS VARCHAR) AS i_item_desc,
    CAST(i_current_price AS DOUBLE) AS i_current_price,
    CAST(i_wholesale_cost AS DOUBLE) AS i_wholesale_cost,
    CAST(i_brand_id AS BIGINT) AS i_brand_id,
    CAST(i_brand AS VARCHAR) AS i_brand,
    CAST(i_class_id AS BIGINT) AS i_class_id,
    CAST(i_class AS VARCHAR) AS i_class,
    CAST(i_category_id AS BIGINT) AS i_category_id,
    CAST(i_category AS VARCHAR) AS i_category,
    CAST(i_manufact_id AS BIGINT) AS i_manufact_id,
    CAST(i_manufact AS VARCHAR) AS i_manufact,
    CAST(i_size AS VARCHAR) AS i_size,
    CAST(i_formulation AS VARCHAR) AS i_formulation,
    CAST(i_color AS VARCHAR) AS i_color,
    CAST(i_units AS VARCHAR) AS i_units,
    CAST(i_container AS VARCHAR) AS i_container,
    CAST(i_manager_id AS BIGINT) AS i_manager_id,
    CAST(i_product_name AS VARCHAR) AS i_product_name
FROM tpcds.sf1.item;

CREATE TABLE sf1.promotion AS 
SELECT 
    CAST(p_promo_sk AS BIGINT) AS p_promo_sk,
    CAST(p_promo_id AS VARCHAR) AS p_promo_id,
    CAST(p_start_date_sk AS BIGINT) AS p_start_date_sk,
    CAST(p_end_date_sk AS BIGINT) AS p_end_date_sk,
    CAST(p_item_sk AS BIGINT) AS p_item_sk,
    CAST(p_cost AS DOUBLE) AS p_cost,
    CAST(p_response_targe AS BIGINT) AS p_response_targe,
    CAST(p_promo_name AS VARCHAR) AS p_promo_name,
    CAST(p_channel_dmail AS VARCHAR) AS p_channel_dmail,
    CAST(p_channel_email AS VARCHAR) AS p_channel_email,
    CAST(p_channel_catalog AS VARCHAR) AS p_channel_catalog,
    CAST(p_channel_tv AS VARCHAR) AS p_channel_tv,
    CAST(p_channel_radio AS VARCHAR) AS p_channel_radio,
    CAST(p_channel_press AS VARCHAR) AS p_channel_press,
    CAST(p_channel_event AS VARCHAR) AS p_channel_event,
    CAST(p_channel_demo AS VARCHAR) AS p_channel_demo,
    CAST(p_channel_details AS VARCHAR) AS p_channel_details,
    CAST(p_purpose AS VARCHAR) AS p_purpose,
    CAST(p_discount_active AS VARCHAR) AS p_discount_active
FROM tpcds.sf1.promotion;

CREATE TABLE sf1.reason AS 
SELECT 
    CAST(r_reason_sk AS BIGINT) AS r_reason_sk,
    CAST(r_reason_id AS VARCHAR) AS r_reason_id,
    CAST(r_reason_desc AS VARCHAR) AS r_reason_desc
FROM tpcds.sf1.reason;

CREATE TABLE sf1.ship_mode AS 
SELECT 
    CAST(sm_ship_mode_sk AS BIGINT) AS sm_ship_mode_sk,
    CAST(sm_ship_mode_id AS VARCHAR) AS sm_ship_mode_id,
    CAST(sm_type AS VARCHAR) AS sm_type,
    CAST(sm_code AS VARCHAR) AS sm_code,
    CAST(sm_carrier AS VARCHAR) AS sm_carrier,
    CAST(sm_contract AS VARCHAR) AS sm_contract
FROM tpcds.sf1.ship_mode;

CREATE TABLE sf1.store AS 
SELECT 
    CAST(s_store_sk AS BIGINT) AS s_store_sk,
    CAST(s_store_id AS VARCHAR) AS s_store_id,
    CAST(s_rec_start_date AS VARCHAR) AS s_rec_start_date,
    CAST(s_rec_end_date AS VARCHAR) AS s_rec_end_date,
    CAST(s_closed_date_sk AS BIGINT) AS s_closed_date_sk,
    CAST(s_store_name AS VARCHAR) AS s_store_name,
    CAST(s_number_employees AS BIGINT) AS s_number_employees,
    CAST(s_floor_space AS BIGINT) AS s_floor_space,
    CAST(s_hours AS VARCHAR) AS s_hours,
    CAST(s_manager AS VARCHAR) AS s_manager,
    CAST(s_market_id AS BIGINT) AS s_market_id,
    CAST(s_geography_class AS VARCHAR) AS s_geography_class,
    CAST(s_market_desc AS VARCHAR) AS s_market_desc,
    CAST(s_market_manager AS VARCHAR) AS s_market_manager,
    CAST(s_division_id AS BIGINT) AS s_division_id,
    CAST(s_division_name AS VARCHAR) AS s_division_name,
    CAST(s_company_id AS BIGINT) AS s_company_id,
    CAST(s_company_name AS VARCHAR) AS s_company_name,
    CAST(s_street_number AS VARCHAR) AS s_street_number,
    CAST(s_street_name AS VARCHAR) AS s_street_name,
    CAST(s_street_type AS VARCHAR) AS s_street_type,
    CAST(s_suite_number AS VARCHAR) AS s_suite_number,
    CAST(s_city AS VARCHAR) AS s_city,
    CAST(s_county AS VARCHAR) AS s_county,
    CAST(s_state AS VARCHAR) AS s_state,
    CAST(s_zip AS VARCHAR) AS s_zip,
    CAST(s_country AS VARCHAR) AS s_country,
    CAST(s_gmt_offset AS DOUBLE) AS s_gmt_offset,
    CAST(s_tax_precentage AS DOUBLE) AS s_tax_precentage
FROM tpcds.sf1.store;

CREATE TABLE sf1.store_returns AS 
SELECT 
    CAST(sr_returned_date_sk AS BIGINT) AS sr_returned_date_sk,
    CAST(sr_return_time_sk AS BIGINT) AS sr_return_time_sk,
    CAST(sr_item_sk AS BIGINT) AS sr_item_sk,
    CAST(sr_customer_sk AS BIGINT) AS sr_customer_sk,
    CAST(sr_cdemo_sk AS BIGINT) AS sr_cdemo_sk,
    CAST(sr_hdemo_sk AS BIGINT) AS sr_hdemo_sk,
    CAST(sr_addr_sk AS BIGINT) AS sr_addr_sk,
    CAST(sr_store_sk AS BIGINT) AS sr_store_sk,
    CAST(sr_reason_sk AS BIGINT) AS sr_reason_sk,
    CAST(sr_ticket_number AS BIGINT) AS sr_ticket_number,
    CAST(sr_return_quantity AS BIGINT) AS sr_return_quantity,
    CAST(sr_return_amt AS DOUBLE) AS sr_return_amt,
    CAST(sr_return_tax AS DOUBLE) AS sr_return_tax,
    CAST(sr_return_amt_inc_tax AS DOUBLE) AS sr_return_amt_inc_tax,
    CAST(sr_fee AS DOUBLE) AS sr_fee,
    CAST(sr_return_ship_cost AS DOUBLE) AS sr_return_ship_cost,
    CAST(sr_refunded_cash AS DOUBLE) AS sr_refunded_cash,
    CAST(sr_reversed_charge AS DOUBLE) AS sr_reversed_charge,
    CAST(sr_store_credit AS DOUBLE) AS sr_store_credit,
    CAST(sr_net_loss AS DOUBLE) AS sr_net_loss
FROM tpcds.sf1.store_returns;

CREATE TABLE sf1.store_sales AS 
SELECT 
    CAST(ss_sold_date_sk AS BIGINT) AS ss_sold_date_sk,
    CAST(ss_sold_time_sk AS BIGINT) AS ss_sold_time_sk,
    CAST(ss_item_sk AS BIGINT) AS ss_item_sk,
    CAST(ss_customer_sk AS BIGINT) AS ss_customer_sk,
    CAST(ss_cdemo_sk AS BIGINT) AS ss_cdemo_sk,
    CAST(ss_hdemo_sk AS BIGINT) AS ss_hdemo_sk,
    CAST(ss_addr_sk AS BIGINT) AS ss_addr_sk,
    CAST(ss_store_sk AS BIGINT) AS ss_store_sk,
    CAST(ss_promo_sk AS BIGINT) AS ss_promo_sk,
    CAST(ss_ticket_number AS BIGINT) AS ss_ticket_number,
    CAST(ss_quantity AS BIGINT) AS ss_quantity,
    CAST(ss_wholesale_cost AS DOUBLE) AS ss_wholesale_cost,
    CAST(ss_list_price AS DOUBLE) AS ss_list_price,
    CAST(ss_sales_price AS DOUBLE) AS ss_sales_price,
    CAST(ss_ext_discount_amt AS DOUBLE) AS ss_ext_discount_amt,
    CAST(ss_ext_sales_price AS DOUBLE) AS ss_ext_sales_price,
    CAST(ss_ext_wholesale_cost AS DOUBLE) AS ss_ext_wholesale_cost,
    CAST(ss_ext_list_price AS DOUBLE) AS ss_ext_list_price,
    CAST(ss_ext_tax AS DOUBLE) AS ss_ext_tax,
    CAST(ss_coupon_amt AS DOUBLE) AS ss_coupon_amt,
    CAST(ss_net_paid AS DOUBLE) AS ss_net_paid,
    CAST(ss_net_paid_inc_tax AS DOUBLE) AS ss_net_paid_inc_tax,
    CAST(ss_net_profit AS DOUBLE) AS ss_net_profit
FROM tpcds.sf1.store_sales;

CREATE TABLE sf1.time_dim AS 
SELECT 
    CAST(t_time_sk AS BIGINT) AS t_time_sk,
    CAST(t_time_id AS VARCHAR) AS t_time_id,
    CAST(t_time AS BIGINT) AS t_time,
    CAST(t_hour AS BIGINT) AS t_hour,
    CAST(t_minute AS BIGINT) AS t_minute,
    CAST(t_second AS BIGINT) AS t_second,
    CAST(t_am_pm AS VARCHAR) AS t_am_pm,
    CAST(t_shift AS VARCHAR) AS t_shift,
    CAST(t_sub_shift AS VARCHAR) AS t_sub_shift,
    CAST(t_meal_time AS VARCHAR) AS t_meal_time
FROM tpcds.sf1.time_dim;

CREATE TABLE sf1.warehouse AS 
SELECT 
    CAST(w_warehouse_sk AS BIGINT) AS w_warehouse_sk,
    CAST(w_warehouse_id AS VARCHAR) AS w_warehouse_id,
    CAST(w_warehouse_name AS VARCHAR) AS w_warehouse_name,
    CAST(w_warehouse_sq_ft AS BIGINT) AS w_warehouse_sq_ft,
    CAST(w_street_number AS VARCHAR) AS w_street_number,
    CAST(w_street_name AS VARCHAR) AS w_street_name,
    CAST(w_street_type AS VARCHAR) AS w_street_type,
    CAST(w_suite_number AS VARCHAR) AS w_suite_number,
    CAST(w_city AS VARCHAR) AS w_city,
    CAST(w_county AS VARCHAR) AS w_county,
    CAST(w_state AS VARCHAR) AS w_state,
    CAST(w_zip AS VARCHAR) AS w_zip,
    CAST(w_country AS VARCHAR) AS w_country,
    CAST(w_gmt_offset AS DOUBLE) AS w_gmt_offset
FROM tpcds.sf1.warehouse;

CREATE TABLE sf1.web_page AS 
SELECT 
    CAST(wp_web_page_sk AS BIGINT) AS wp_web_page_sk,
    CAST(wp_web_page_id AS VARCHAR) AS wp_web_page_id,
    CAST(wp_rec_start_date AS VARCHAR) AS wp_rec_start_date,
    CAST(wp_rec_end_date AS VARCHAR) AS wp_rec_end_date,
    CAST(wp_creation_date_sk AS BIGINT) AS wp_creation_date_sk,
    CAST(wp_access_date_sk AS BIGINT) AS wp_access_date_sk,
    CAST(wp_autogen_flag AS VARCHAR) AS wp_autogen_flag,
    CAST(wp_customer_sk AS BIGINT) AS wp_customer_sk,
    CAST(wp_url AS VARCHAR) AS wp_url,
    CAST(wp_type AS VARCHAR) AS wp_type,
    CAST(wp_char_count AS BIGINT) AS wp_char_count,
    CAST(wp_link_count AS BIGINT) AS wp_link_count,
    CAST(wp_image_count AS BIGINT) AS wp_image_count,
    CAST(wp_max_ad_count AS BIGINT) AS wp_max_ad_count
FROM tpcds.sf1.web_page;

CREATE TABLE sf1.web_returns AS 
SELECT 
    CAST(wr_returned_date_sk AS BIGINT) AS wr_returned_date_sk,
    CAST(wr_returned_time_sk AS BIGINT) AS wr_returned_time_sk,
    CAST(wr_item_sk AS BIGINT) AS wr_item_sk,
    CAST(wr_refunded_customer_sk AS BIGINT) AS wr_refunded_customer_sk,
    CAST(wr_refunded_cdemo_sk AS BIGINT) AS wr_refunded_cdemo_sk,
    CAST(wr_refunded_hdemo_sk AS BIGINT) AS wr_refunded_hdemo_sk,
    CAST(wr_refunded_addr_sk AS BIGINT) AS wr_refunded_addr_sk,
    CAST(wr_returning_customer_sk AS BIGINT) AS wr_returning_customer_sk,
    CAST(wr_returning_cdemo_sk AS BIGINT) AS wr_returning_cdemo_sk,
    CAST(wr_returning_hdemo_sk AS BIGINT) AS wr_returning_hdemo_sk,
    CAST(wr_returning_addr_sk AS BIGINT) AS wr_returning_addr_sk,
    CAST(wr_web_page_sk AS BIGINT) AS wr_web_page_sk,
    CAST(wr_reason_sk AS BIGINT) AS wr_reason_sk,
    CAST(wr_order_number AS BIGINT) AS wr_order_number,
    CAST(wr_return_quantity AS BIGINT) AS wr_return_quantity,
    CAST(wr_return_amt AS DOUBLE) AS wr_return_amt,
    CAST(wr_return_tax AS DOUBLE) AS wr_return_tax,
    CAST(wr_return_amt_inc_tax AS DOUBLE) AS wr_return_amt_inc_tax,
    CAST(wr_fee AS DOUBLE) AS wr_fee,
    CAST(wr_return_ship_cost AS DOUBLE) AS wr_return_ship_cost,
    CAST(wr_refunded_cash AS DOUBLE) AS wr_refunded_cash,
    CAST(wr_reversed_charge AS DOUBLE) AS wr_reversed_charge,
    CAST(wr_account_credit AS DOUBLE) AS wr_account_credit,
    CAST(wr_net_loss AS DOUBLE) AS wr_net_loss
FROM tpcds.sf1.web_returns;

CREATE TABLE sf1.web_sales AS 
SELECT 
    CAST(ws_sold_date_sk AS BIGINT) AS ws_sold_date_sk,
    CAST(ws_sold_time_sk AS BIGINT) AS ws_sold_time_sk,
    CAST(ws_ship_date_sk AS BIGINT) AS ws_ship_date_sk,
    CAST(ws_item_sk AS BIGINT) AS ws_item_sk,
    CAST(ws_bill_customer_sk AS BIGINT) AS ws_bill_customer_sk,
    CAST(ws_bill_cdemo_sk AS BIGINT) AS ws_bill_cdemo_sk,
    CAST(ws_bill_hdemo_sk AS BIGINT) AS ws_bill_hdemo_sk,
    CAST(ws_bill_addr_sk AS BIGINT) AS ws_bill_addr_sk,
    CAST(ws_ship_customer_sk AS BIGINT) AS ws_ship_customer_sk,
    CAST(ws_ship_cdemo_sk AS BIGINT) AS ws_ship_cdemo_sk,
    CAST(ws_ship_hdemo_sk AS BIGINT) AS ws_ship_hdemo_sk,
    CAST(ws_ship_addr_sk AS BIGINT) AS ws_ship_addr_sk,
    CAST(ws_web_page_sk AS BIGINT) AS ws_web_page_sk,
    CAST(ws_web_site_sk AS BIGINT) AS ws_web_site_sk,
    CAST(ws_ship_mode_sk AS BIGINT) AS ws_ship_mode_sk,
    CAST(ws_warehouse_sk AS BIGINT) AS ws_warehouse_sk,
    CAST(ws_promo_sk AS BIGINT) AS ws_promo_sk,
    CAST(ws_order_number AS BIGINT) AS ws_order_number,
    CAST(ws_quantity AS BIGINT) AS ws_quantity,
    CAST(ws_wholesale_cost AS DOUBLE) AS ws_wholesale_cost,
    CAST(ws_list_price AS DOUBLE) AS ws_list_price,
    CAST(ws_sales_price AS DOUBLE) AS ws_sales_price,
    CAST(ws_ext_discount_amt AS DOUBLE) AS ws_ext_discount_amt,
    CAST(ws_ext_sales_price AS DOUBLE) AS ws_ext_sales_price,
    CAST(ws_ext_wholesale_cost AS DOUBLE) AS ws_ext_wholesale_cost,
    CAST(ws_ext_list_price AS DOUBLE) AS ws_ext_list_price,
    CAST(ws_ext_tax AS DOUBLE) AS ws_ext_tax,
    CAST(ws_coupon_amt AS DOUBLE) AS ws_coupon_amt,
    CAST(ws_ext_ship_cost AS DOUBLE) AS ws_ext_ship_cost,
    CAST(ws_net_paid AS DOUBLE) AS ws_net_paid,
    CAST(ws_net_paid_inc_tax AS DOUBLE) AS ws_net_paid_inc_tax,
    CAST(ws_net_paid_inc_ship AS DOUBLE) AS ws_net_paid_inc_ship,
    CAST(ws_net_paid_inc_ship_tax AS DOUBLE) AS ws_net_paid_inc_ship_tax,
    CAST(ws_net_profit AS DOUBLE) AS ws_net_profit
FROM tpcds.sf1.web_sales;

CREATE TABLE sf1.web_site AS 
SELECT 
    CAST(web_site_sk AS BIGINT) AS web_site_sk,
    CAST(web_site_id AS VARCHAR) AS web_site_id,
    CAST(web_rec_start_date AS VARCHAR) AS web_rec_start_date,
    CAST(web_rec_end_date AS VARCHAR) AS web_rec_end_date,
    CAST(web_name AS VARCHAR) AS web_name,
    CAST(web_open_date_sk AS BIGINT) AS web_open_date_sk,
    CAST(web_close_date_sk AS BIGINT) AS web_close_date_sk,
    CAST(web_class AS VARCHAR) AS web_class,
    CAST(web_manager AS VARCHAR) AS web_manager,
    CAST(web_mkt_id AS BIGINT) AS web_mkt_id,
    CAST(web_mkt_class AS VARCHAR) AS web_mkt_class,
    CAST(web_mkt_desc AS VARCHAR) AS web_mkt_desc,
    CAST(web_market_manager AS VARCHAR) AS web_market_manager,
    CAST(web_company_id AS BIGINT) AS web_company_id,
    CAST(web_company_name AS VARCHAR) AS web_company_name,
    CAST(web_street_number AS VARCHAR) AS web_street_number,
    CAST(web_street_name AS VARCHAR) AS web_street_name,
    CAST(web_street_type AS VARCHAR) AS web_street_type,
    CAST(web_suite_number AS VARCHAR) AS web_suite_number,
    CAST(web_city AS VARCHAR) AS web_city,
    CAST(web_county AS VARCHAR) AS web_county,
    CAST(web_state AS VARCHAR) AS web_state,
    CAST(web_zip AS VARCHAR) AS web_zip,
    CAST(web_country AS VARCHAR) AS web_country,
    CAST(web_gmt_offset AS DOUBLE) AS web_gmt_offset,
    CAST(web_tax_percentage AS DOUBLE) AS web_tax_percentage
FROM tpcds.sf1.web_site;


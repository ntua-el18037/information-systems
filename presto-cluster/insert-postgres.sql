-- insert to postgresql

CREATE TABLE sf1.call_center AS SELECT * FROM tpcds.sf1.call_center;
CREATE TABLE sf1.catalog_page AS SELECT * FROM tpcds.sf1.catalog_page;
CREATE TABLE sf1.catalog_returns AS SELECT * FROM tpcds.sf1.catalog_returns;
CREATE TABLE sf1.catalog_sales AS SELECT * FROM tpcds.sf1.catalog_sales;
CREATE TABLE sf1.customer AS SELECT * FROM tpcds.sf1.customer;
CREATE TABLE sf1.customer_address AS SELECT * FROM tpcds.sf1.customer_address;
CREATE TABLE sf1.customer_demographics AS SELECT * FROM tpcds.sf1.customer_demographics;
CREATE TABLE sf1.date_dim AS SELECT * FROM tpcds.sf1.date_dim;
CREATE TABLE sf1.household_demographics AS SELECT * FROM tpcds.sf1.household_demographics;
CREATE TABLE sf1.income_band AS SELECT * FROM tpcds.sf1.income_band;
CREATE TABLE sf1.inventory AS SELECT * FROM tpcds.sf1.inventory;
CREATE TABLE sf1.item AS SELECT * FROM tpcds.sf1.item;
CREATE TABLE sf1.promotion AS SELECT * FROM tpcds.sf1.promotion;
CREATE TABLE sf1.reason AS SELECT * FROM tpcds.sf1.reason;
CREATE TABLE sf1.ship_mode AS SELECT * FROM tpcds.sf1.ship_mode;
CREATE TABLE sf1.store AS SELECT * FROM tpcds.sf1.store;
CREATE TABLE sf1.store_returns AS SELECT * FROM tpcds.sf1.store_returns;
CREATE TABLE sf1.store_sales AS SELECT * FROM tpcds.sf1.store_sales;
CREATE TABLE sf1.time_dim AS SELECT * FROM tpcds.sf1.time_dim;
CREATE TABLE sf1.warehouse AS SELECT * FROM tpcds.sf1.warehouse;
CREATE TABLE sf1.web_page AS SELECT * FROM tpcds.sf1.web_page;
CREATE TABLE sf1.web_returns AS SELECT * FROM tpcds.sf1.web_returns;
CREATE TABLE sf1.web_sales AS SELECT * FROM tpcds.sf1.web_sales;
CREATE TABLE sf1.web_site AS SELECT * FROM tpcds.sf1.web_site;
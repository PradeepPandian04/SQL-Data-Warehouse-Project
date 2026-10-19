/*
========================================================================
DDL Script: Create Bronze Tables
========================================================================
Script Purpose:
    This script creates tables in the 'bronze' schema, dropping existing tables
    if they already exist.
    Run this script to re-define the DDL structure of 'bronze' Tables
========================================================================
*/
IF OBJECT_ID ('bronze.crm_cust_info','U') IS NOT NULL
	DROP Table bronze.crm_cust_info;
CREATE TABLE bronze.crm_cust_info
	(
	cst_id INT,
	cst_key VARCHAR(50),
	cst_firstname VARCHAR(50),
	cst_lastname VARCHAR(50),
	cst_marital_status VARCHAR(50),
	cst_gndr VARCHAR(50),
	cst_create_date DATETIME
	);

IF OBJECT_ID ('bronze.crm_prd_info','U') IS NOT NULL
	DROP Table bronze.crm_prd_info;
CREATE TABLE bronze.crm_prd_info
	(
	prd_id INT,
	prd_key NVARCHAR(100),
	prd_nm NVARCHAR(100),
	prd_cost INT,
	prd_line NVARCHAR(100),
	prd_start_dt DATETIME,
	prd_end_dt DATETIME
	);

IF OBJECT_ID ('bronze.crm_sales_details','U') IS NOT NULL
	DROP Table bronze.crm_sales_details;
CREATE TABLE bronze.crm_sales_details
	(
	sls_ord_num NVARCHAR(100),
	sls_prd_key NVARCHAR(100),
	sls_cust_id INT,
	sls_order_dt INT,
	sls_ship_dt INT,
	sls_due_dt INT,
	sls_sales INT,
	sls_quantity INT,
	sls_price INT
	);

IF OBJECT_ID ('bronze.erp_cust_az12','U') IS NOT NULL
	DROP Table bronze.erp_cust_az12;
CREATE TABLE bronze.erp_cust_az12
	(
	cid NVARCHAR(100),
	bdate DATE,
	gen NVARCHAR(100)
	);

IF OBJECT_ID ('bronze.erp_loc_a101','U') IS NOT NULL
	DROP Table bronze.erp_loc_a101;
CREATE TABLE bronze.erp_loc_a101
	(
	cid NVARCHAR(100),
	cntry NVARCHAR(100)
	);

IF OBJECT_ID ('bronze.erp_px_cat_g1v2','U') IS NOT NULL
	DROP Table bronze.erp_px_cat_g1v2;
CREATE TABLE bronze.erp_px_cat_g1v2
	(
	id NVARCHAR(100),
	cat NVARCHAR(100),
	subcat NVARCHAR(100),
	maintenance NVARCHAR(100)
	);

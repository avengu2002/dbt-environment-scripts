{{ config(materialized='table') }}

WITH tb1 as(
    select
    P_PARTKEY,
	P_NAME,
	P_MFGR,
	P_BRAND,
	P_TYPE,
	P_SIZE,
	P_CONTAINER,
	P_RETAILPRICE,
	P_COMMENT
from {{source('snowflake_data','RAW_PART')}})
select * from tb1


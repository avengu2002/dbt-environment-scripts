{{ config(materialized='table') }}

WITH tb1 as(
    select
S_SUPPKEY ,
S_NAME,
S_ADDRESS,
S_NATIONKEY,
S_PHONE,
S_ACCTBAL,
S_COMMENT
from {{source('snowflake_data','RAW_SUPPLIER')}})
select * from tb1

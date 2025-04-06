{{ config(materialized='table') }}

WITH tb1 as(
    select
    PS_PARTKEY, 
    PS_SUPPKEY,
    PS_AVAILQTY,
    PS_SUPPLYCOST,
    PS_COMMENT 
from {{source('snowflake_data','RAW_PARTSUPP')}})
select * from tb1

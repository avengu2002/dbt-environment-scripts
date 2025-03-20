{{ config(materialized='table') }}


WITH tb1  as(
 select
        id ,
        first_name,
        last_name
     from {{source('datafeed_raw_schema','RAW_CUSTOMERS')}})
     select * from tb1

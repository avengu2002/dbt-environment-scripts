{{ config(materialized='view') }}

WITH tb1  as(
 select
        id,
        order_date,
        user_id        
     from {{source('datafeed_raw_schema','RAW_ORDERS')}})
     select * from tb1
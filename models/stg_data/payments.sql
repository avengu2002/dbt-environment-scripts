{{ config(materialized='table') }}


WITH tb1  as(
 select *
 from {{source('datafeed_raw_schema','RAW_PAYMENTS')}})
     select * from tb1

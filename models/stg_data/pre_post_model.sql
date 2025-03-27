{{ config(
    materialized="table",
    pre_hook="TRUNCATE TABLE {{ this }}",
    post_hook="TRUNCATE TABLE {{source('datafeed_raw_schema','RAW_PAYMENTS')}}"
) }}


WITH tb1 as(
    select 
    *
    from {{source('datafeed_raw_schema','RAW_PAYMENTS')}})
select * from tb1
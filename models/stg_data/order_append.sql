
{{ config(
    materialized="incremental",
    incremental_strategy="append",
) }}

select * from {{source('datafeed_raw_schema','RAW_ORDERS')}} 

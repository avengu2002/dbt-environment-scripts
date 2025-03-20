{{ config(
materialized="incremental",
unique_key ='id',
incremental_strategy= "merge"
) }}
select * from {{source('datafeed_raw_schema','RAW_ORDERS')}} 
{% if is_incremental() %}
    where id in (100, 101, 102)
{% endif %}   

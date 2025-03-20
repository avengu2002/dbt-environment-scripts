{{ config(materialized="incremental",
         unique_key='id',
         incremental_strategy="delete+insert",
         
) }}
select * from {{source('datafeed_raw_schema','RAW_ORDERS')}}
{% if is_incremental() %}
    where id in (99,100,103)
{% endif %}
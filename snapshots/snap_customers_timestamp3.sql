{% snapshot snap_customers_timestamp3 %}  

{{
  config(      
    target_schema='snapshot_schema',      
    strategy='timestamp',      
    unique_key='id',      
    updated_at='updated_at',
    hard_deletes='new_record'
  )  
}}  

  select * 
    from {{source('datafeed_raw_schema','CUSTOMERS')}}

{% endsnapshot %}
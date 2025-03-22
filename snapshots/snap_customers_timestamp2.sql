{% snapshot snap_customers_timestamp2 %}  

{{
  config(      
    target_schema='snapshot_schema',      
    strategy='timestamp',      
    unique_key='id',      
    updated_at='updated_at',
    invalidate_hard_deletes=True   
  )  
}}  

  select * 
    from {{source('datafeed_raw_schema','CUSTOMERS')}}

{% endsnapshot %}
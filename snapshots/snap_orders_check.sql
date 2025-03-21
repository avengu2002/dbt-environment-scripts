{% snapshot snap_orders_check %}


    {{
        config(
          target_schema='snapshot_schema',
          strategy='check',
          unique_key='id',
          check_cols=['user_id','order_date', 'status'],
        )
    }}

    select * from {{ source('datafeed_raw_schema', 'RAW_ORDERS') }}

{% endsnapshot %}

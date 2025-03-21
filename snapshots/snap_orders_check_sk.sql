{% snapshot snap_orders_check_sk %}


    {{
        config(
          target_schema='snapshot_schema',
          strategy='check',
          unique_key='id',
          check_cols=['sk'],
        )
    }}

    select {{ dbt_utils.generate_surrogate_key(['user_id','order_date', 'status']) }} as sk, * from {{ source('datafeed_raw_schema', 'RAW_ORDERS') }}

{% endsnapshot %}
{% snapshot orders_snapshot %}

{{
    config(
      target_database='DEV',
      target_schema='INT_SCHEMA',
      unique_key='ID',
      strategy='timestamp',
      updated_at='update_at',
      invalidate_hard_deletes=True
    )
}}

select * from DEV.RAW_DATA.ORDERS_RAW

{% endsnapshot %}
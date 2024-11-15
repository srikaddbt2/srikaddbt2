{% snapshot products_snapshot %}

{{
    config(
      target_database='DEV',
      target_schema='INT_SCHEMA',
      unique_key='prod_id',
      strategy='check',
      check_cols=['prod_name','unit_price'],
      invalidate_hard_deletes=True
    )
}}

select * from DEV.RAW_SCHEMA.PROD_RAW

{% endsnapshot %}
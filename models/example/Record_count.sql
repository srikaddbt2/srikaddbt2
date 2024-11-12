{{
    config(
        materialized='table'
    )
}}

with row_count as (
    {{ get_row_count('DEV.int_schema.my_first_dbt_model') }}
)

select * from row_count;




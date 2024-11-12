{{
    config(
        materialized='table'
    )
}}

{% set row_count = get_row_count('my_first_dbt_model') %}
with row_count as (
    {{ get_row_count('row_count') }}
)

select * from row_count;




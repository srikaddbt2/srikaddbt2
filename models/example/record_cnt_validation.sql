{{
    config(
        materialized='table'
    )
}}



with row_count_cte as (
    {{ count_rows('my_second_dbt_model') }} 
)

select
    row_count
from row_count_cte
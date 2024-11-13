{{
    config(
        materialized='table'
    )
}}



with row_count_cte as (
    {{ get_row_count('my_second_dbt_model') }} 
)

select
    row_count
from row_count_cte
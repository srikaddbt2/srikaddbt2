{{
    config(
        materialized='table'
    )
}}



with row_count_cte as (
    {{ get_row_count('my_first_dbt_model') }}  -- Call the macro and pass the table name
)

select
    row_count
from row_count_cte
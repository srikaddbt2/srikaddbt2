{{
    config(
        materialized='table'
    )
}}



with row_count_cte as (
    {{ get_row_count('my_first_dbt_model') }} ,
    'my_first_dbt_model' AS Model/Table
)

select
    row_count
from row_count_cte
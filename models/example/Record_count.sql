{{
    config(
        materialized='table'
    )
}}

{% set row_count = get_row_count('my_first_dbt_model') %}
-- You can then use this row count in your analysis or testing logic
 {{ row_count }} AS row_count;




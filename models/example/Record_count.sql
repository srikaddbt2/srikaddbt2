{{
    config(
        materialized='table'
    )
}}


    select  {{ ref('my_first_dbt_model') }} AS table_name
    {{ get_row_count(ref('my_first_dbt_model')) }} AS row_count



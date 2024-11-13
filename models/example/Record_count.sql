{{
    config(
        materialized='table'
    )
}}


    select     get_row_count({{ ref('my_first_dbt_model') }}) AS cnt

    



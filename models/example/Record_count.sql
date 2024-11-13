{{
    config(
        materialized='table'
    )
}}


     get_row_count({{ ref('my_first_dbt_model') }})





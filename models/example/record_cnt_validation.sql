{{
    config(
        materialized='table'
    )
}}




    count_rows('{{ ref('my_second_dbt_model') }}')

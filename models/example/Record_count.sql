{{
    config(
        materialized='table'
    )
}}



WITH row_counts AS (
  SELECT 
    'my_first_dbt_model' AS table_name,
    get_row_count({{ ref('my_first_dbt_model') }}  AS row_count;

))

SELECT * FROM row_counts


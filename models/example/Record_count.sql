{{
    config(
        materialized='table'
    )
}}



WITH row_counts AS (
  SELECT 
    'table1' AS table_name,
    {{ get_row_count(ref('table1')) }} AS row_count

)

SELECT * FROM row_counts
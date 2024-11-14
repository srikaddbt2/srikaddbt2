{% macro get_row_count(table_name) %}
  
    select count(*) as row_count,{{ ref(table_name) }} as table from {{ ref(table_name) }}
 
{% endmacro %}
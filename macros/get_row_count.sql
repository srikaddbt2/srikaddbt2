{% macro get_row_count(table_name) %}
  
    select count(*) as row_count from {{ ref(table_name) }}
 
{% endmacro %}


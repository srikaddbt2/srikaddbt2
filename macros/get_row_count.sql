{% macro get_row_count(table_name) %}
  {% set query %}
    select count(*) as row_count from {{ ref(table_name) }}
  {% endset %} 
  {% do run_query(query) %} 
{% endmacro %}
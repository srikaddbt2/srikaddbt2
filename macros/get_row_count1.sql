

{% macro get_row_count(table_name) %}
  {% if execute %}
    {% set table_exists_query %}
      select 1 from {{ ref(table_name) }} limit 1
    {% endset %}
    
    {% set table_exists = run_query(table_exists_query) %}
    
    {% if table_exists %}
      select count(*) from {{ ref(table_name) }}
    {% else %}
      select 0 as count
    {% endif %}
  {% else %}
    -- return a default value for non-executing contexts like tests
    select 0 as count
  {% endif %}
{% endmacro %}


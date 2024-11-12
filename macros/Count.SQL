{% macro count_records(table_name) %}
  {% set cnt_tbl %}
    select count(*) from {{ ref(table_name) }}
    {% endset %}
    {% do run_query(cnt_tbl) %}
{% endmacro %}


{% macro count_records(table_name) %}
    select count(*) from {{ ref(table_name) }}
{% endmacro %}
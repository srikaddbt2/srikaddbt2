{% macro get_row_count(my_first_dbt_model) %}
      {% set source_tables_query %}
    select count(*) as row_count
    from {{ ref(my_first_dbt_model) }}
     {% endset %}
    {% do run_query(source_tables_query) %}
{% endmacro %}

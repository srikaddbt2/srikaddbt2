

{% macro get_row_count(table_name) %}
    {% set query %}
        SELECT COUNT(*) AS row_count
        FROM {{ ref(table_name) }}
    {% endset %}

      {% do run_query(cnt_tbl) %}
{% endmacro %}


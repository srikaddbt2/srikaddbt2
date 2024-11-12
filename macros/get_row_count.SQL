
{% macro get_row_count(my_first_dbt_model) %}
    {% set cnt_qry %}
     select count(*) as row_count
    from {{ ref(my_first_dbt_model) }}
    {% endset %}
    {% do run_query(cnt_qry) %}
{% endmacro %}    
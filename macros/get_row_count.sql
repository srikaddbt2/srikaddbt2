
{% macro get_row_count(model_name) %}

     select count(*) as row_count
    from {{ ref(model_name) }}
{% endmacro %}    
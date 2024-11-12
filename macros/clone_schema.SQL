{% macro clone_schema(source_schema, target_schema) %}
  {% set source_tables_query %}
    SELECT table_name
    FROM information_schema.tables
    WHERE table_schema = '{{ source_schema }}'
  {% endset %}
  
  {% set source_tables = run_query(source_tables_query).columns[0].values() %}
  
  {% for table in source_tables %}
    {% set clone_table_query %}
      CREATE TABLE {{ target_schema }}.{{ table }} AS
      SELECT * FROM {{ source_schema }}.{{ table }} LIMIT 0;
    {% endset %}
    
    {% do run_query(clone_table_query) %}
    {{ log("Cloned table " ~ table ~ " from " ~ source_schema ~ " to " ~ target_schema, info=True) }}
  {% endfor %}
  
  -- Optionally, you might want to create views, indexes, etc. You can expand the macro to handle this.
{% endmacro %}


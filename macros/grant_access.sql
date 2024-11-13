{% macro grant_access(role, database, schema, tables) %}
    {% set grant_database = "GRANT USAGE ON DATABASE " ~ database ~ " TO ROLE " ~ role %}
    {% set grant_schema = "GRANT USAGE ON SCHEMA " ~ database ~ "." ~ schema ~ " TO ROLE " ~ role %}
    
    {% for table in tables %}
        {% set grant_table = "GRANT SELECT ON TABLE " ~ database ~ "." ~ schema ~ "." ~ table ~ " TO ROLE " ~ role %}
        {% do run_query(grant_table) %}
    {% endfor %}
    
    -- Grant database and schema access
    {% do run_query(grant_database) %}
    {% do run_query(grant_schema) %}
 
{% endmacro %}

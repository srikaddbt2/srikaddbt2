{% macro clone_any_object(object_type, source, target) %}
  {% if object_type == 'database' %}
    -- Clone the database (if your data warehouse supports this functionality)
    -- For example, in Snowflake you can use "CREATE DATABASE ... CLONE"
    {% if target is none %}
      {% set target = source %}
    {% endif %}
    CREATE DATABASE {{ target }} CLONE {{ source }};
    
  {% elif object_type == 'schema' %}
    -- Clone the schema (e.g., in Snowflake, use "CREATE SCHEMA ... CLONE")
    {% if target is none %}
      {% set target = source %}
    {% endif %}
    CREATE SCHEMA {{ target }} CLONE {{ source }};
    
  {% elif object_type == 'table' %}
    -- Clone a table (this is commonly done in systems like Snowflake)
    -- Example for Snowflake, use "CREATE TABLE ... CLONE"
    {% if target is none %}
      {% set target = source %}
    {% endif %}
    CREATE TABLE {{ target }} CLONE {{ source }};
    
  {% else %}
    -- Raise an error if an invalid object type is provided
    {% do raise(
        exception='Invalid object type provided. Please specify "database", "schema", or "table".'
    ) %}
  {% endif %}
{% endmacro %}

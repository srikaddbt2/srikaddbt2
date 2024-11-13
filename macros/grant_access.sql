{% macro grant_access(role, database, schema, tables) %}

-- Grant usage on database
GRANT USAGE ON DATABASE {{ database }} TO ROLE {{ role }};

-- Grant usage on schema
GRANT USAGE ON SCHEMA {{ database }}.{{ schema }} TO ROLE {{ role }};

-- Grant select on all tables in schema
GRANT SELECT ON ALL TABLES IN SCHEMA {{ database }}.{{ schema }} TO ROLE {{ role }};

-- Grant select on future tables in schema
GRANT SELECT ON FUTURE TABLES IN SCHEMA {{ database }}.{{ schema }} TO ROLE {{ role }};

-- Grant select on specific tables
{% for table in tables %}
    GRANT SELECT ON TABLE {{ database }}.{{ schema }}.{{ table }} TO ROLE {{ role }};
{% endfor %}

{% endmacro %}
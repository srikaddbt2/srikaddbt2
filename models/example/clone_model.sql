{% set source_database = 'DEV_DB' %}
{% set target_database = 'TGT_DB' %}
{% set object_type = 'database' %}

{{ clone_any_object(object_type, source_database, target_database) }}
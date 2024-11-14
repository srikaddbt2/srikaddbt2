{% macro audit_macro(model_name,status) %}

insert into INT_SCHEMA.AUDIT_TB 
values ('{{model_name}}' ,'{{status}}',current_timestamp :: timestamp_ntz);

{% endmacro %}
{{
config(
materialized='incremental',
unique_key='empid',
alias='EMP_TRG11_DEL_INS2',
incremental_strategy='delete+insert'
 )
}}

select
*,'{{invocation_id}}' as run_id, from DEV.RAW_Schema.EMP_STG2
{% if is_incremental() %}
where inserted_at > (select max(inserted_at) from {{this}} )
{% endif %}

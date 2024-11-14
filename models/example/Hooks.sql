{{ config(materialized='table',
          alias="HOOK_MODEL",
          pre_hook=["insert into INT_SCHEMA.AUDIT_TB select 'HOOK_MODEL','Started',current_timestamp :: timestamp_ntz"],
          post_hook=["insert into INT_SCHEMA.AUDIT_TB select 'HOOK_MODEL','Completed',current_timestamp :: timestamp_ntz",
                     "GRANT USAGE ON DATABASE DEV TO ROLE analyst_role",
                     "GRANT USAGE ON SCHEMA DEV.INT_SCHEMA TO ROLE analyst_role",
                     "GRANT SELECT ON TABLE DEV.INT_SCHEMA.AUDIT_TB TO ROLE analyst_role",
                     "GRANT SELECT ON TABLE DEV.INT_SCHEMA.HOOK_MODEL TO ROLE analyst_role"]
   )
}}


with source_data as (

    select 1 as id
    union all
    select 2 as id
    union all
    select 3 as id
    union all
    select null as id

)

select *
from source_data
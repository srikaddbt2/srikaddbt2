
with record_count as (
    {{ count_records('my_first_dbt_model') }}
)

select * from record_count;

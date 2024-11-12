


with row_count as (
    select {{ get_row_count('my_first_dbt_model') }} as total_rows
)
select * from row_count;


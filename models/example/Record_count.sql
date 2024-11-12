


with row_count as (
    select {{ get_row_count('my_table') }} as total_rows
)
select * from row_count;

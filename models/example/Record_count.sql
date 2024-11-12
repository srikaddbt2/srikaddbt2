with row_count_cte as (
    {{ get_row_count('my_table') }}
)
select * from row_count_cte;
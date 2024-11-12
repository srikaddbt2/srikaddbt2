

{% set row_count = get_row_count{{ ref('my_first_dbt_model') }} %}

SELECT {{ row_count }} AS row_count;


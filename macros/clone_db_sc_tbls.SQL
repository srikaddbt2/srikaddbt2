

{% macro clone_db_sc_tbls(trg_db,trg_sc,src_db,src_sc,tbl_list) %}
    {% set cln_db %}
    CREATE OR REPLACE DATABASE {{trg_db}} ;
    {% endset %}
    {% do run_query(cln_db) %}

     {% set cln_sc %}
    CREATE OR REPLACE SCHEMA {{trg_db}}.{{trg_sc}} ;
    {% endset %}
    {% do run_query(cln_sc) %}

    {% for tbl in tbl_list %}
     {% set src_tbl= src_db~'.'~src_sc~'.'~tbl %}   
     {% set trg_tbl= trg_db~'.'~trg_sc~'.'~tbl %}  
        {% set clon_tb %}
        CREATE OR REPLACE TABLE {{trg_tbl}} CLONE {{src_tbl}};  
        {% endset %}
        {% do run_query(clon_tb) %}
    {% endfor %}
{% endmacro %}

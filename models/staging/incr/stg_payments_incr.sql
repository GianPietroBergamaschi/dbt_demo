
{{ config(
    materialized = 'incremental',
    unique_key = 'id'
) }}

with payments_incr as (
    select * from {{ source('dbt_gbergamaschi', 'src_payments_incr') }}
    {% if is_incremental() %}
    where last_modify >= (select max(last_modify) from {{ this }})
    {% endif %}
)
select * from payments_incr

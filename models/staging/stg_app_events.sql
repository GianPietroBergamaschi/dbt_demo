
/* stg_app_events.sql */

select * from {{ source('stripe','payment') }}
{{ limit_data_in_dev('created',-39, 'MONTH') }}
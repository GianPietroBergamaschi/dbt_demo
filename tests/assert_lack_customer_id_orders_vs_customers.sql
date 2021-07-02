
/* assert_lack_customer_id_orders_vs_customers.sql */

-- Rows of STG_ORDERS with customer_id not in STG_CUSTOMERS are not acceptable
-- Return records make the test fail

select
    customer_id
from {{ ref('stg_orders') }}
where customer_id not in
   (select
        customer_id
    from {{ ref('stg_customers') }})

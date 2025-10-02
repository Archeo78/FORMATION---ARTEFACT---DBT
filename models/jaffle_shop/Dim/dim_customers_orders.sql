select
    stg_customers.customer_id,
    stg_customers.first_name,
    stg_customers.last_name,
    int_customers_orders.first_order_date,
    int_customers_orders.most_recent_order_date,
    coalesce(int_customers_orders.number_of_orders, 0) as number_of_orders
from {{ ref("stg_customers") }}
left join {{ ref("int_customers_orders") }} 
    using (customer_id)
 select
    payment_id,
    order_id,
    payment_method,
    status,
    order_date,
    ordered_quantity
from {{ ref("stg_payments") }}
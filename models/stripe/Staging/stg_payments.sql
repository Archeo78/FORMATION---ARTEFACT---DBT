 select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    amount as ordered_quantity,
    created as order_date
from {{ source("stripe_sources","payment") }}
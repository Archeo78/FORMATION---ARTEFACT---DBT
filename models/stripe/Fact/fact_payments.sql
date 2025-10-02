 select
    payment_id,
    order_id,
    payment_method,
    status,
    order_date,
    ordered_quantity,
    {{convert_cents('ordered_quantity',euro = 'euro',rate = 0.85)}}
from {{ ref("stg_payments") }}
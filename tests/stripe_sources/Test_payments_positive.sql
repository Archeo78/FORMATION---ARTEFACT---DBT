select
    order_id,
    sum(ordered_quantity) as total_amount
from {{ ref('fact_payments') }}
group by 1
having total_amount < 0
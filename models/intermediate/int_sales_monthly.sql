select
    location,
    movie_id,
    date_trunc('MONTH', transaction_day) as transaction_month,
    sum(revenue) as revenue,
    sum(ticket_amount) as ticket_sold
from {{ ref('int_sales') }}
group by
    location,
    movie_id,
    transaction_month
select 
    movie_id,
    month,
    location_id,
    total_invoice_sum
from {{ source('SILVERSCREEN', 'invoices') }}
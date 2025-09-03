select 
*
from {{ ref('stg_invoices') }} as i 
join {{ ref('int_sales_monthly') }} as ism 
on i.location_id=ism.location
and i.movie_id=ism.movie_id
and i.month=ism.transaction_month

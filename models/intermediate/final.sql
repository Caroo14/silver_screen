select *

from {{ ref('int_cost_revenue_monthly') }} icrm
LEFT join {{ ref('stg_movies') }} m 
on icrm.movie_id=ism.movie_id
and i.month=ism.transaction_month

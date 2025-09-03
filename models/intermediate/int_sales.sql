select * from {{ ref('stg_nj_001') }}
UNION ALL
select * FROM {{ ref('stg_nj_002') }}
UNION ALL 
select *  FROM {{ ref('stg_nj_003') }}
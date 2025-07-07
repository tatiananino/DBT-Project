with invalid_orders as (
    select *
    from {{ ref('stg_orders') }}
    where ordered_date > current_date
)
select count(*)
from invalid_orders
having count(*) > 0
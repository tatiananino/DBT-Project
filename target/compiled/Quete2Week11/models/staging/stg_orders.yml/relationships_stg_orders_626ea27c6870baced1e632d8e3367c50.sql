
    
    

with child as (
    select order_id as from_field
    from `my_dbt_db`.`stg_orders`
    where order_id is not null
),

parent as (
    select customer_id as to_field
    from `my_dbt_db`.`stg_customers`
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



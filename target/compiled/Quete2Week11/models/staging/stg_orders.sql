-- models/staging/stg_customers.sql
with orders as (
    select * from `my_dbt_db`.`raw_orders`
),
customers as (
    select customer_id
    from `my_dbt_db`.`stg_customers`
)

select
    o.id as order_id,
    o.customer as customer_id,  -- renombramos aquí
    o.ordered_at as ordered_date
from orders o
join customers c on o.customer = c.customer_id
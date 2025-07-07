
    
    

select
    customer_id as unique_field,
    count(*) as n_records

from `my_dbt_db`.`stg_orders`
where customer_id is not null
group by customer_id
having count(*) > 1




    
    

select
    id as unique_field,
    count(*) as n_records

from `my_dbt_db`.`stg_orders`
where id is not null
group by id
having count(*) > 1



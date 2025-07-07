select
      count(*) as failures,
      case
        when count(*) <> 0 then 'true'
        else 'false'
      end as should_warn,
      case
        when count(*) <> 0 then 'true'
        else 'false'
      end as should_error
    from (
      
    
    

select
    customer_id as unique_field,
    count(*) as n_records

from `my_dbt_db`.`stg_orders`
where customer_id is not null
group by customer_id
having count(*) > 1



      
    ) dbt_internal_test
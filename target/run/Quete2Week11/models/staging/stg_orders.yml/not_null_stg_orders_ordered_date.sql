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
      
    
    



select ordered_date
from `my_dbt_db`.`stg_orders`
where ordered_date is null



      
    ) dbt_internal_test
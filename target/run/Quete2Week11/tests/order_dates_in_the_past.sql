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
      with invalid_orders as (
    select *
    from `my_dbt_db`.`stg_orders`
    where ordered_date > current_date
)
select count(*)
from invalid_orders
having count(*) > 0
      
    ) dbt_internal_test
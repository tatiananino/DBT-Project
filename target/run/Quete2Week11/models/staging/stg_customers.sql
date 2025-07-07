
  create view `my_dbt_db`.`stg_customers__dbt_tmp`
    
    
  as (
    -- models/staging/stg_customers.sql
with source as (
    select * from `my_dbt_db`.`raw_customers`
),
renamed as (
    select
        id as customer_id,
        name as customer_name
    from source
)
select * from renamed
  );
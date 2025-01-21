with source as (
    select * from {{ source('my_dbt_db', 'raw_orders') }}
),
renamed as (
    select
        id as orders_id,
        customer as orders_customer
    from source
)
select * from renamed
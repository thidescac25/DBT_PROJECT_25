with source as (
    select * from {{ source('DBT_PROJECT_25', 'raw_orders') }}
),
renamed as (
    select
        id as order_id,
        customer as customer_id,
        ordered_at,
        store_id
    from source
)
select * from renamed
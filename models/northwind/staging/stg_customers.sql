with
    source as (
        select
            customer_id
            , company_name
            , contact_name
            , contact_title
            , address
            , city
            , region		
            , country
            , postal_code
            , phone
            , fax

        from {{ source('erpnorthwind', 'public_customers') }}
    )

select * from source
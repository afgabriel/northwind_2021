with
    sources as (
        select
           shipper_id
           ,company_name as shipper_name
           ,phone	

        from {{ source('erpnorthwind','public_shippers') }}
    )

select * from sources
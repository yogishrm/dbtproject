
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with data_1 as (

    select max(Radius_mean) as Radius_mean 

)

select *
from data_1

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null

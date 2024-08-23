{{ config(materialized='view') }}

with 

source as (
    select * from {{ source('ga_distances', 'ga_early_ballot_returns')}}
),

base as (
    select 
        voterbase_id,
        vb_vf_county_name,
        aug_primary_voted_date
    from source

)

select * from base

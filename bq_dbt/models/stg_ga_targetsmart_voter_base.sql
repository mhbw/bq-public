-- {{ config(materialized='view') }}

-- with 

-- source as (
--     select * from {{ source('ga_targetsmart', 'voter_base')}}
-- ),

-- base as (
--     select
--         voterbase_id,
--         vb_vf_cd,
--         vb_vf_g2018,
--         vb_vf_g2020,
--         vb_tsmart_cd,
--         vb_tsmart_zip,
--         vb_vf_reg_zip,
--         vb_tsmart_city,
--         vb_vf_reg_city,
--         vb_reg_latitude,
--         vb_tsmart_state,
--         vb_vf_reg_state,
--         vb_voterbase_age,
--         vb_vf_county_code,
--         vb_vf_county_name,
--         vb_voterbase_race,
--         vb_tsmart_latitude,
--         vb_vf_voter_status,
--         vb_tsmart_longitude,
--         vb_tsmart_last_name,
--         vb_voterbase_gender,
--         vb_tsmart_first_name,
--         vb_tsmart_county_code,
--         vb_tsmart_county_name,
--         vb_tsmart_middle_name,
--         vb_tsmart_partisan_score,
--         vb_vf_early_voter_status,
--         vb_voterbase_phone_presence_flag,
--         created_at,
--         updated_at

--     from source 
-- )

-- select * from base
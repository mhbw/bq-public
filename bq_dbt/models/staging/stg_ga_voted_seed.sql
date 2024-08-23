WITH raw as (
    SELECT 
        voterbase_id,
        vb_vf_county_name,
        aug_primary_voted_date
    FROM GA_Distances.voted_seed_table	
),
output AS (
    SELECT * FROM raw
)
SELECT * FROM output
WITH raw as (
    SELECT 
        voterbase_id,
        vb_vf_county_name,
        aug_primary_voted_date,
        Method
    FROM GA_Distances.GA_Early_Ballot_Returns
),
output AS (
    SELECT * FROM raw
)
SELECT * FROM output
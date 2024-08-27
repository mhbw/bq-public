WITH raw as (
    SELECT 
        VANID,
        State,
        vote_prop2024
    FROM voterfile_ok.modelscores_ok
),
output AS (
    SELECT * FROM raw
)
SELECT * FROM output
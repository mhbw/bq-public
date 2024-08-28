{{ config(materialized='view') }}

-- join OK tables directly from the database
WITH joined_ok_tables AS (
    SELECT *
    FROM {{ ref('stg_ok_raw_contacthistory') }} AS contact_history
    LEFT JOIN {{ ref('stg_ok_raw_demo') }} AS demographics
        ON contact_history.DWID = demographics.DWID
    LEFT JOIN {{ ref('stg_ok_raw_modelscores') }} AS model_scores
        ON model_scores.VANID = demographics.Voter_File_VANID
)
SELECT * FROM joined_ok_tables
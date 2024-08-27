{{ config(materialized='view') }}

-- join OK tables directly from the database
WITH joined_ok_tables AS (
    SELECT *
    FROM {{ source('voterfile_ok','contacthistory_ok') }} AS contact_history
    LEFT JOIN {{ source('voterfile_ok','voterfile_demographics_ok') }} AS demographics
        ON contact_history.DWID = demographics.DWID
    LEFT JOIN {{ source('voterfile_ok','modelscores_ok') }} AS model_scores
        ON model_scores.VANID = demographics.Voter_File_VANID
)
SELECT * FROM joined_ok_tables
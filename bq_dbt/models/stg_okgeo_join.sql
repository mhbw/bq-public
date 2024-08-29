{{ config(materialized='view') }}

-- join OK tables directly from the database
WITH okgeo_join AS (
    SELECT *
    FROM {{ ref('stg_ok_raw_precincts') }} AS precincts
    LEFT JOIN {{ ref('stg_ok_format_county') }} AS demographics
        ON precincts.county_nam = demographics.County
)
SELECT * FROM okgeo_join
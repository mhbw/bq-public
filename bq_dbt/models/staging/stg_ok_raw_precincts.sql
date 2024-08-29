WITH raw AS (
    SELECT objectid_1,
        objectid,
        dist_id,
        dist_name,
        shape_leng,
        precinct,
        p0030001,
        dx_dev,
        p0030001_d,
        st_house,
        st_senate,
        comm,
        uscong,
        county,
        county_nam,
        pct_ceb,
        co_fips,
        geoid,
        p0010001,
        shape__are,
        shape__len
    FROM gcc_dbt.ok_2020_precincts
),
output AS (
    SELECT * FROM raw
)
SELECT * FROM output
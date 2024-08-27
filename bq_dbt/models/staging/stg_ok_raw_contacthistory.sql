WITH raw AS (
    SELECT
        DWID,
        State,
        Canvass_Result,
        Survey_Disposition,
        Date_Canvassed
    FROM voterfile_ok.contacthistory_ok
),
output AS (
    SELECT * FROM raw
)
SELECT * FROM output
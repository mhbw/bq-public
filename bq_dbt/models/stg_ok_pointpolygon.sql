-- SELECT *,
--     st_geogpoint(longitude, latitude) as point,
-- FROM `shape_file_table` AS polygons
-- JOIN `data_with_coordinates` AS point
-- ON ST_WITHIN(st_geogpoint(point.longitude, point.latitude), polygons.polygon)
-- where longitude IS NOT NULL and latitude IS NOT NULL


-- 07 Order By

-- The ORDER BY statement sorts rows of data in ascending or descending order.
-- By default, this command sorts the data in ascending order.

-- Default into showing ascending order
-- SELECT name, genre, stream, year
-- FROM shows
-- ORDER BY year;

-- SELECT name, genre, stream, year
-- FROM shows
-- ORDER BY year DESC;

-- Activity

SELECT name, tomatometer
FROM shows
ORDER BY tomatometer;
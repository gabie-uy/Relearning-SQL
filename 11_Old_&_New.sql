-- 11 Old & New

-- 11 Old & New

-- Example 1
-- SELECT MIN(plays)
-- FROM playlist;

-- Example 2
-- SELECT title, artist, MAX(plays)
-- FROM playlist;

-- Activity

-- God Only Knows by The Beach Boys (1966)
SELECT title, artist, MIN(year)
FROM playlist;

-- Beautiful Things by Benson Boone (2024)
SELECT title, artist, MAX(year)
FROM playlist;
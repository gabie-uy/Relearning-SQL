-- 14 Group By

-- Example 1
-- SELECT genre, COUNT(*) 
-- FROM playlist 
-- GROUP BY genre;

-- Example 2
-- SELECT genre, AVG(duration)
-- FROM playlist 
-- GROUP BY genre;

-- Activity: Find all the different artists and their average number of plays in two columns.
SELECT artist, AVG(plays)
FROM playlist
GROUP BY artist;
-- Write code below 💖

-- The LIKE operator can be used to search for a pattern in a column
-- % is a wildcard character that can be used with LIKE
-- A% matches values that begin with letter 'A'.
-- %z matches values that end with 'z'.

-- Begins with T
-- SELECT * 
-- FROM shows 
-- WHERE name LIKE 'T%';

-- Show with the word "the" in the name
-- SELECT * 
-- FROM shows 
-- WHERE name LIKE '%the%';

-- Activity
SELECT *
FROM shows
WHERE genre LIKE '%com%';
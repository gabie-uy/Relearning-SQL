-- 06 The Golden Age

-- The BETWEEN operator is used in a WHERE clause to filter the result set within a certain range.
-- The range must be separated by an AND keyword.

-- SELECT *
-- FROM shows
-- WHERE year
-- BETWEEN 2020 AND 2025;

-- Presents shows with names that begin with A up to D
-- SELECT *
-- FROM shows
-- WHERE name
-- BETWEEN 'A' AND 'D';

-- Note: BETWEEN stops at the second letter, but doesn’t include values that begin with the second letter.

SELECT * FROM shows
WHERE year
BETWEEN 1999 AND 2024;
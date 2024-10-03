-- 15 Video Games

-- COUNT() returns the number of rows.
-- MIN() returns the smallest value in a column.
-- MAX() returns the largest value in a column.
-- SUM() returns the total sum in a column.
-- AVG() returns the average value in a column.
-- GROUP BY groups the result using the common values in a column.

-- SELECT *
-- FROM games;

-- What is the most popular game in the list?
-- SELECT title, MAX(players)
-- FROM games;

-- What are the counts of all the programming languages?
SELECT language, COUNT(*)
FROM games
GROUP BY language;

-- What are the average Metascores for each of the genres?
-- SELECT genre, AVG(metascore)
-- FROM games
-- GROUP BY genre;
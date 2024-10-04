-- 17 Insert Into

-- INSERT INTO is a clause that adds the specified row.
-- companies the name of the table the row is being added to.
-- (id, name, headquarters, year) is a parameter with the column names that data will be inserted to.
-- VALUES clause indicates the data being inserted.
-- (1, 'Twitter', 'San Francisco', 2006) are the values.

INSERT INTO companies (id, name, headquarters, year)
VALUES (1, 'Twitter', 'San Francisco 🌁', 2006);

INSERT INTO companies (id, name, headquarters, year)
VALUES (2, 'Duolingo', 'Pittsburgh 🐝', 2011);

INSERT INTO companies (id, name, headquarters, year)
VALUES (3, 'BeReal', 'Paris 🇫🇷', 2020);

INSERT INTO companies (id, name, headquarters, year)
VALUES (4, 'Codedex', 'New York 🗽', 2022);

-- Activity
INSERT INTO companies (id, name, headquarters, year)
VALUES (5, 'Eneos', 'Tokyo 🇯🇵', 2010);

INSERT INTO companies (id, name, headquarters, year)
VALUES (6, 'Samsung', 'South Korea 🇰🇷', 2013);

SELECT *
FROM companies;
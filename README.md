# Relearning SQL

## SELECT

*Files: 01_introduction.sql and 02_TheSelect.sql*

- ``SELECT`` retrieves data from a database.
- ``*`` asterisk means all columns.
- ``FROM`` keyword followed by the table name.
- ``shows`` is the name of the table we are requesting data from.
- ``;`` we end the statement with a semicolon.

- Can have two forms:

```ruby
    SELECT * FROM shows;


    SELECT *
    FROM shows;
```

## SELECT DISTINCT

*Files: 03_StreamingWars.sql*

- ``DISTINCT`` is used to return just the unique values in a column, so no duplicates

- Will show all (repeated too)

```ruby
    SELECT genre
    FROM shows;
```

- Without repeating

```ruby
    SELECT DISTINCT genre
    FROM shows;
```

## WHERE 

*Files: 04_RottenTomatoes.sql*

- ``WHERE`` filters information based on a confidition
- ``=`` equal to
- ``!=`` not equal to
- ``>`` greater than
- ``<`` less than
- ``>=`` greater than or equal to
- ``<=`` less than or equal to

- Presents information of id = 23

```ruby
    SELECT *
    FROM shows
    WHERE id = 23;
``` 

- Presents shows listed after 2020

```ruby
    SELECT *
    FROM shows
    WHERE year > 2020;
```

## LIKE

*File: 05_Like.sql*

- The ``LIKE`` operator can be used to search for a pattern in a column
- The percentage sign ``%`` is a wildcard character that can be used with ``LIKE``
    - ``A%`` matches values that begin with letter 'A'.
    - ``%z`` matches values that end with 'z'.

```ruby
        SELECT * 
        FROM shows 
        WHERE name LIKE '%the%';
```

## BETWEEN

*File: 06_GoldenAge.sql*

- The ``BETWEEN`` operator is used in a ``WHERE`` clause to filter the result set within a certain range
- The range must be separated by an ``AND`` keyword
- When the values are text, ``BETWEEN`` filters the result within the alphabetical range.

```ruby
    SELECT *
    FROM shows
    WHERE year
    BETWEEN 2020 AND 2025;

    -- Presents shows with names that begin with A up to D
    SELECT *
    FROM shows
    WHERE name
    BETWEEN 'A' AND 'D';
```

## ORDER BY

*File: 07_OrderBy.sql*

- The ``ORDER BY`` statement sorts rows of data in ascending or descending order.
- By default, this command sorts the data in ascending order.

- Default into showing ascending order

```ruby 
    SELECT name, genre, stream, year
    FROM shows
    ORDER BY year;

    SELECT name, genre, stream, year
    FROM shows
    ORDER BY year DESC;
```

### Short Summary

*File: 08_NYCRestaurants.sql*

- ``SELECT`` selects data ``FROM`` a database.
- ``SELECT *`` selects all the columns.
- ``DISTINCT`` returns unique values in a column.
- ``WHERE`` filters results based on a condition.
- Comparison operators: ``=``, ``!=``, ``>``, ``<``, ``>=``, ``<=``.
- ``LIKE`` operator searches for a specific pattern.
- ``BETWEEN`` operator matches values in a range.
- ``ORDER BY`` sorts data (ascending/descending).

## COUNT

- The ``COUNT()`` function counts the number of rows

```ruby
    SELECT COUNT(*)
    FROM table_name;
```

- ``*`` counts every row

## MIN( ) & MAX( )

*File: 11_Old_&_New.sql*

- ``MIN()`` and ``MAX()`` are exactly how they sound: they return the minimum and maximum value in a column, respectively

```ruby
    SELECT MIN(plays)
    FROM playlist;

    SELECT title, artist, MAX(plays)
    FROM playlist;
```

## SUM( )

*File: 12_TotalPlaytime.sql*

- The ``SUM()`` aggregate function takes a column and returns the total sum of the values in it

```ruby
    SELECT SUM(plays)
    FROM playlist;
```

## AVG( )

*File: 13_BillboardHot100.sql*

- Use the ``AVG()`` function to calculate the average value of a column

```ruby
    SELECT AVG(plays)
    FROM playlist;
```

## GROUP BY

*File: 14_GroupBy.sql*

- The ``GROUP BY`` statement groups rows of data with the same values into buckets. 
- It’s often used with aggregate functions to group the result by one or more columns.

```ruby
    SELECT genre, COUNT(*) 
    FROM playlist 
    GROUP BY genre;

    SELECT genre, AVG(duration)
    FROM playlist 
    GROUP BY genre;
```

### Short Summary

*File: 15_VideoGames.sql*

- ``COUNT()`` returns the number of rows
- ``MIN()`` returns the smallest value in a column
- ``MAX()`` returns the largest value in a column
- ``SUM()`` returns the total sum in a column
- ``AVG()`` returns the average value in a column
- ``GROUP BY`` groups the result using the common values in a column

## CREATE TABLE

*File: 16_CreateTable.sql*

- ``CREATE TABLE`` statement creates a brand new table in a database

```ruby
    CREATE TABLE companies (
        id INTEGER,
        name TEXT,
        headquarters TEXT,
        year INTEGER
    );
```

- ``id`` column of the data type ``INTEGER``
- ``name`` column of the data type ``TEXT``
- ``headquarters`` column of the data type ``TEXT``
- ``year`` column of the data type ``INTEGER``

### Data Types

- ``TEXT``: a text string
- ``INTEGER``: a positive or negative whole number
- ``REAL``: a positive or negative decimal number
- ``DATE``: a date format (YYYY-MM-DD)

## INSERT INTO

*File: 17_InsertInto.sql*

- Use the ``INSERT`` statement to add a new row into a table

```ruby
    INSERT INTO companies (id, name, headquarters, year)
    VALUES (1, 'Twitter', 'San Francisco', 2006);
```

- ``INSERT INTO`` is a clause that adds the specified row
- companies the name of the table the row is being added to
- ``(id, name, headquarters, year)`` is a parameter with the column names that data will be inserted to
- ``VALUES`` clause indicates the data being inserted
- ``(1, 'Twitter', 'San Francisco', 2006)`` are the values

Example:
```ruby
    INSERT INTO companies (id, name, headquarters, year)
    VALUES (1, 'Twitter', 'San Francisco 🌁', 2006);

    INSERT INTO companies (id, name, headquarters, year)
    VALUES (2, 'Duolingo', 'Pittsburgh 🐝', 2011);

    INSERT INTO companies (id, name, headquarters, year)
    VALUES (3, 'BeReal', 'Paris 🇫🇷', 2020);

    INSERT INTO companies (id, name, headquarters, year)
    VALUES (4, 'Codedex', 'New York 🗽', 2022);
```

## ALTER TABLE

*File: 18_AlterTable.sql*

- ``ALTER TABLE``/``ADD COLUMN`` statement adds a new column to an existing table

```ruby
    ALTER TABLE companies
    ADD COLUMN about TEXT;
```

## UPDATE

*File: 19_UpdateSet.sql*

- The ``UPDATE`` statement edits a row in a table.

```ruby
    UPDATE companies
    SET name = 'X'
    WHERE name = 'Twitter';

    UPDATE companies
    SET headquarters = 'Brooklyn 🌉'
    WHERE id = 4;
```

## DELETE FROM

*File: 20_DeleteFrom.sql*

- ``DELETE FROM`` statement removes one or more rows from a table

```ruby
    DELETE FROM companies
    WHERE name = 'BeReal';
```

### Short Summary

*File: 21_BFFs.sql*

- ``CREATE TABLE`` adds a new table
- ``INSERT INTO`` adds a new row
- ``ALTER TABLE``/``ADD COLUMN`` adds a new column
- ``UPDATE``/``SET`` updates a row
- ``DELETE FROM`` deletes a row(s)

**to be continued when the lecture is complete*
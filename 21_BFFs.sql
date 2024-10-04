-- 21 BFFs

CREATE TABLE cats (
  name TEXT,
  birthday DATE,
  location TEXT,
  note TEXT
);

INSERT INTO cats (name, birthday, location, note)
VALUES ('Bella', 2019, 'Philippines', 'British Shorthair');

INSERT INTO cats (name, birthday, location, note)
VALUES ('Koda', 2022, 'USA', 'Scottish Straight');

INSERT INTO cats (name, birthday, location, note)
VALUES ('Pocket', 2023, 'USA', 'Tabby');

SELECT *
FROM cats;
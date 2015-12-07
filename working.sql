/*
CREATE TABLE creates a new table.
INSERT INTO adds a new row to a table.
SELECT queries data from a table.
UPDATE edits a row in a table.
ALTER TABLE changes an existing table.
DELETE FROM deletes rows from a table.
*/

--geting started
INSERT INTO table_name (id, name, age) VALUES (1, 'Rob Benz', 21);

--change table value
UPDATE table_name 
SET age = 22 WHERE id =1;

--add new column 
ALTER TABLE table_name ADD COLUMN col_name TEXT;

--delete empty somthing
DELETE FROM table_name WHERE col_name IS NULL;

--select distinct
SELECT DISTINCT col_name FROM table_name;

--numberic quantifiers
SELECT * FROM table_name WHERE col_name > 8;

--like omg
SELECT * FROM table_name WHERE col_name LIKE 'som_variab_';

-- % = zero or more
SELECT * FROM table_name WHERE col_name LIKE '%man%';

--between
SELECT * FROM table_name WHERE year BETWEEN 1990 AND 2000;
SELECT * FROM table_name WHERE name BETWEEN 'A' AND 'J' AND genre = 'comedy' OR year < 1980;

--order by
SELECT * FROM table_name ORDER BY imdb_rating DESC;
SELECT * FROM table_name ORDER BY imdb_rating ASC LIMIT 3;

--count rows
SELECT COUNT(*) FROM table_name;

--group
GROUP BY price;

--count number total rows with given conditions
SELECT price, COUNT(*) FROM fake_apps
WHERE downloads > 20000 GROUP BY price;

--add up 
SELECT SUM(downloads) FROM fake_apps;

--calculate total number of downloads
SELECT category, SUM(downloads) FROM fake_apps GROUP BY category;

--how many downloads does the mom popular app
SELECT MAX(downloads) FROM fake_apps;

--return names of most downloaded apps
SELECT name, category, MAX(downloads) FROM fake_apps GROUP BY category;
SELECT name, category, MIN(downloads) FROM fake_apps GROUP BY category;
SELECT AVG(downloads) FROM fake_apps;

--return number of free table_names 
SELECT COUNT(*) FROM table_name WHERE price = 0;

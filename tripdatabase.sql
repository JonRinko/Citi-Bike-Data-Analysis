-- removing varchar datatype contraint on street name columns
-- repeated for all tables although probably easier with for loop or a better statement
ALTER TABLE dec_2018
ALTER COLUMN start_station_name TYPE varchar,
ALTER COLUMN end_station_name TYPE varchar;

-- show all table names 
SELECT * FROM
   pg_catalog.pg_tables
WHERE
   schemaname != 'pg_catalog'
AND schemaname != 'information_schema';

-- select some table data to test imports/dates
SELECT * FROM january_2018
LIMIT 10;

SELECT * FROM january_2019
LIMIT 10;

SELECT * FROM feb_2018
LIMIT 10;

SELECT * FROM feb_2019
LIMIT 10;

SELECT * FROM march_2018
LIMIT 10;

SELECT * FROM march_2019
LIMIT 10;

SELECT * FROM april_2018
LIMIT 10;

SELECT * FROM april_2019
LIMIT 10;

SELECT * FROM may_2018
LIMIT 10;

SELECT * FROM may_2019
LIMIT 10;

SELECT * FROM june_2018
LIMIT 10;

SELECT * FROM june_2019
LIMIT 10;

SELECT * FROM july_2018
LIMIT 10;

SELECT * FROM july_2019
LIMIT 10;

SELECT * FROM august_2018
LIMIT 10;

SELECT * FROM august_2019
LIMIT 10;

SELECT * FROM september_2018
LIMIT 10;

SELECT * FROM september_2019
LIMIT 10;

SELECT * FROM october_2018
LIMIT 10;

SELECT * FROM october_2019
LIMIT 10;

SELECT * FROM nov_2018
LIMIT 10;

SELECT * FROM nov_2019
LIMIT 10;

SELECT * FROM dec_2018
LIMIT 10;


--  TODO: Merge all 2018 tables and 2019 tables

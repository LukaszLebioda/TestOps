-- https://pg-sql.com/

CREATE DATABASE mypostgres;
--DROP DATABASE mypostgres;

CREATE TABLE cities (
    name VARCHAR(50), -- variable character (string) of 50 chars max,
    country VARCHAR(50), -- string of 50 chars max,
    population INTEGER, -- integer,
    area INTEGER -- integer,
); 
--DROP TABLE person;

INSERT INTO cities (name, country, population, area) 
VALUES ('Delhi', 'India', 28125000, 2240),

INSERT INTO cities (name, country, population, area) 
VALUES 
	('Delhi', 'India', 28125000, 2240),
	('Tokyo', 'Japan', 38505000, 8223),
    ('Shanghai', 'China', 22125000, 4015),
    ('Sao Paulo', 'Brazil', 20935000, 3043);

SELECT * FROM cities;
SELECT name, country FROM cities;
SELECT name, population / area AS density FROM cities;


DROP TABLE IF EXISTS make, model;
CREATE USER normal_user;
CREATE DATABASE normal_cars OWNER TO normal_user;

CREATE TABLE make AS
SELECT DISTINCT make_code, make_title, model_code
FROM car_models;

ALTER TABLE make
ADD id serial;

CREATE TABLE model AS
SELECT DISTINCT model_code, model_title, year
FROM car_models;

ALTER TABLE model
ADD id serial;

SELECT DISTINCT make_title
FROM car_models;

SELECT DISTINCT model_title
FROM car_models
WHERE make_code='VOLKS';

SELECT DISTINCT make_code, model_code, model_title, year
FROM car_models
WHERE make_code='LAM';

SELECT DISTINCT*
FROM car_models
WHERE year
BETWEEN 2010
AND 2015;
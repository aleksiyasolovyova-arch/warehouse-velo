DROP TABLE IF EXISTS date_dim CASCADE ;
DROP TABLE IF EXISTS weather_dim CASCADE ;
DROP TABLE IF EXISTS vehicle_dim CASCADE ;
DROP TABLE IF EXISTS user_dim CASCADE ;
DROP TABLE IF EXISTS lock_dim CASCADE ;
DROP TABLE IF EXISTS rides_fact CASCADE ;

CREATE TABLE date_dim (
    date_sk SERIAL PRIMARY KEY ,
    date DATE,
    year INTEGER,
    quarter INTEGER,
    month_nr INTEGER,
    month_name VARCHAR(15),
    day_nr INTEGER,
    day_name VARCHAR(10),
    is_weekday BOOLEAN
);

CREATE TYPE weather_type AS ENUM ('unpleasant', 'pleasant', 'neutral', 'unknown');

CREATE TABLE weather_dim (
    weather_id SERIAL PRIMARY KEY ,
    weather_type weather_type
);

CREATE TABLE user_dim (

);

CREATE TABLE lock_dim (

);

CREATE TYPE vehicle_type AS ENUM ('velo', 'e-velo', 'step');

CREATE TABLE vehicle_dim (
    vehicle_id SERIAL PRIMARY KEY ,
    vehicle_type vehicle_type
);

CREATE TABLE rides_fact (

);
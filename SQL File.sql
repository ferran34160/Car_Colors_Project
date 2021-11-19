CREATE schema accidents;

use accidents;

DROP TABLE barcelona_accidents;

CREATE TABLE barcelona_accidents (
id INT PRIMARY KEY NOT NULL,
file_code VARCHAR(50),
district_id INTEGER,
district_name VARCHAR(200),
neighborhood_id INTEGER,
neighborhood_name VARCHAR(200),
street_id INTEGER,
street_name VARCHAR(200),
postal_code VARCHAR(50),
weekday_name VARCHAR(50),
weekday_name_shortcut VARCHAR(50),
day_type VARCHAR(50),
year INTEGER,
month INTEGER,
month_name VARCHAR(50),
day INTEGER,
hour INTEGER,
pedestrian_cause VARCHAR(150),
vehicle_type VARCHAR(50),
vehicle_model VARCHAR(50),
vehicle_brand VARCHAR(50),
vehicle_color VARCHAR(50),
driving_license VARCHAR(50),
driving_license_antiquity INTEGER,
UTM_x DECIMAL(9,2),
UTM_y DECIMAL(11,2),
lon DECIMAL(10,6),
lat DECIMAL(10,6)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/accidents_in_Barcelona.csv'
INTO TABLE barcelona_accidents
FIELDS TERMINATED BY ';'
IGNORE 1 ROWS;

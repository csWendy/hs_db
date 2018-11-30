-- DROP DATABASE High_schools;

CREATE DATABASE IF NOT EXISTS High_schools
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_bin;

USE High_schools;

-- loading all columns w/o skipping because the data
-- we will keep may change in future
CREATE TABLE Schools
(
    dbn char(6),
    school_name varchar(100),
    boro varchar(1),
    location varchar(180),
    phone_number char(12),
    fax_number char(12),
    school_email varchar(50),
    website varchar(75),
    subway varchar(200),
    bus text,
    total_students int(5),
    start_time varchar(6),
    end_time varchar(6),
    primary_address_line_1 varchar(50),
    city varchar(20),
    postcode char(5),
    state_code char(2),
    borough varchar(20),
    latitude varchar(12),
    longitude varchar(12),
    community_board int(3) DEFAULT 0,
    counsel_district int(3) DEFAULT 0,
    census_tract int(3) DEFAULT 0,
    BIN varchar(8),
    BBL varchar(15),
    NTA varchar(100)
);

LOAD DATA LOCAL INFILE 'data/2018_DOE_High_School_Directory.csv'
INTO TABLE Schools
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
IGNORE 1 LINES;

-- adding a primary key id will produce warnings when loading
-- the data, bc the there are more columns in table than in csv
-- this is safe to ignore
CREATE TABLE Class_sizes
(
    grade_level char(7),
    program_type varchar(15),
    department varchar(7),
    class_size varchar(5),
    number_of_students int(5),
    number_of_classes int(4),
    percent_of_students_in_grade decimal(3,1),
    id int NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id)
);

LOAD DATA LOCAL INFILE 'data/2017-_2018_Class_Size_Report_City_Middle_And_High_School_Class_Size_Distribution.csv'
INTO TABLE Class_sizes
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
IGNORE 1 LINES;

-- delete middle school records
DELETE FROM Class_sizes
WHERE grade_level='MS CORE';

-- delete unused columns
ALTER TABLE Schools
DROP total_students,
DROP community_board,
DROP counsel_district,
DROP census_tract,
DROP BIN,
DROP BBL,
DROP NTA;
DROP DATABASE High_schools;

CREATE DATABASE IF NOT EXISTS High_schools
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_bin;

USE High_schools;

# loading all columns w/o skipping because the data
# we will keep may change in future
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

LOAD DATA LOCAL INFILE '2018_DOE_High_School_Directory.csv'
INTO TABLE Schools
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
IGNORE 1 LINES;

# delete unused columns
ALTER TABLE Schools
DROP total_students,
DROP community_board,
DROP counsel_district,
DROP census_tract,
DROP BIN,
DROP BBL,
DROP NTA;
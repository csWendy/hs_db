
-- alternative script for loading a class size file in which row of 'MS Core' are cut off.  
CREATE TABLE Class_info
(
    dbn char(6),
    school_name varchar(100),
    grade_level char(7),
    program_type varchar(15),
    department varchar(15),
    subject varchar(50),
    num_students int,
    num_classes int,
    avg_class_size decimal(4,1),
    cid int NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (cid)
);

-- this will warn that the file does not have data to fill all columns
-- this is because of the added cid field and is safe to ignore
LOAD DATA LOCAL INFILE '/data/2015_-_2016_Final_Class_Size_Report_High_School.csv'
INTO TABLE Class_info
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

-- delete unused columns
ALTER TABLE Schools
DROP total_students,
DROP community_board,
DROP counsel_district,
DROP census_tract,
DROP BIN,
DROP BBL,
DROP NTA;

ALTER TABLE School_performance
DROP school_name;
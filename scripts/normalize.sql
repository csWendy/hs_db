USE High_schools;

CREATE TABLE SE_ID
(
    dbn char(6),
    eid int
);

INSERT INTO SE_ID (dbn, eid)
SELECT dbn, eid
FROM School_performance;

CREATE TABLE School_performances AS
SELECT School_performance.*, schools.graduation_rate, schools.college_career_rate
FROM schools
JOIN School_performance
    ON schools.dbn = School_performance.dbn;

ALTER TABLE Schools
DROP graduation_rate,
DROP college_career_rate;

DROP TABLE School_performance;

CREATE TABLE SC_ID
(
    dbn char(6),
    cid int
);

INSERT INTO SC_ID (dbn, cid)
SELECT dbn, cid
FROM Class_sizes;
USE High_schools;

-- strip out 0 values (which were inserted b/c of
-- non numerical characters being used to indicate
-- missing information in source data set)
UPDATE School_performance
SET avg_act_english_score = NULL
WHERE avg_act_english_score = 0;

UPDATE School_performance
SET avg_act_math_score = NULL
WHERE avg_act_math_score = 0;

UPDATE School_performance
SET avg_act_reading_score = NULL
WHERE avg_act_reading_score = 0;

UPDATE School_performance
SET avg_act_science_score = NULL
WHERE avg_act_science_score = 0;

UPDATE School_performance
SET avg_sat_math_score = NULL
WHERE avg_sat_math_score = 0;

UPDATE School_performance
SET avg_sat_reading_writing_score = NULL
WHERE avg_sat_reading_writing_score = 0;
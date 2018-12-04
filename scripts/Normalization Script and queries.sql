
-- Normalization Script for School_performance table
SELECT School_performance.*, Schools.graduation_rate, Schools.college_career_rate FROM School_performance JOIN Schools USING (dbn);

-- querys  
select dbn,school_name,graduation_rate, college_career_rate from Schools group by dbn;
-- Test
select distinct
major, major_desc
FROM cipe_student
--where major = 'ECON'
order by major
;
select id,name
from cipe_student
where major = 'ECON'
and academic_period = '201840'
;
SELECT * FROM CENSUS_ARCHIVE.archive_enrollment
WHERE class = 'FR'
ORDER BY academic_period DESC
;
SELECT * FROM CENSUS_ARCHIVE.archive_enrollment
WHERE class = 'FR' AND academic_period = 201840
ORDER BY id ASC
;
-- Practice
/* Question 1 */
SElECT COUNT(id)
FROM CENSUS_ARCHIVE.archive_enrollment
WHERE class = 'FR' AND academic_period = 201840
;
/* Question 2*/
SElECT COUNT (DISTINCT id), major
FROM CENSUS_ARCHIVE.archive_enrollment
WHERE academic_period = 201840
GROUP BY major
ORDER BY major ASC
;
/* Question 3 */
SELECT id, name, new_student_ind, academic_period
FROM CENSUS_ARCHIVE.archive_enrollment
WHERE state = 'AZ' AND new_student_ind = 1 AND academic_period = 201840
ORDER BY name ASC
;
/*Question 4a*/
SELECT COUNT(id)
FROM CENSUS_ARCHIVE.archive_enrollment
WHERE major = 'BIOL' AND usf_ethnicity_desc = 'African American' AND gender = 'F' AND academic_period = 201840
;
/*Question 4b*/
SELECT COUNT(id)
FROM CENSUS_ARCHIVE.archive_enrollment
WHERE major = 'BIOL' AND usf_ethnicity_desc = 'African American' AND gender = 'M' AND academic_period = 201840
;
/*Question 5*/
    (SELECT COUNT(id)
    FROM CENSUS_ARCHIVE.archive_enrollment
    WHERE major = 'BIOL' AND usf_ethnicity_desc = 'African American' AND gender = 'F' AND academic_period = 201840 OR academic_period = 201740 OR academic_period = 201640) 
    -
    (SELECT COUNT(id)
    FROM CENSUS_ARCHIVE.archive_enrollment
    WHERE major = 'BIOL' AND usf_ethnicity_desc = 'African American' AND gender = 'M' AND academic_period = 201840 OR academic_period = 201740 OR academic_period = 201640)
;
SELECT *
    FROM CENSUS_ARCHIVE.archive_enrollment
    WHERE major = 'BIOL' 
    AND usf_ethnicity_desc = 'African American'
    and gender = 'F'
    and academic_period in ('201640', '201740', '201840')
    --group by academic_period
    --order by academic_period
    ;
    SELECT *
    FROM CENSUS_ARCHIVE.archive_enrollment
    WHERE major = 'BIOL' 
    AND usf_ethnicity_desc = 'African American'
    and gender = 'F'
    and academic_period in ('201640', '201740', '201840')
    and new_student_population is not null


;
--Playing around.
SELECT * FROM CENSUS_ARCHIVE.archive_enrollment
WHERE state_desc LIKE '%s'
LIMIT
;
SELECT COUNT(id)
FROM CENSUS_ARCHIVE.archive_enrollment
WHERE gender IN ('M','F')
;
SELECT *
FROM CENSUS_ARCHIVE.archive_enrollment
WHERE academic_period BETWEEN 201040 AND 201840
ORDER BY academic_period ASC
;
-- Issue with the data I think
SELECT *
FROM CENSUS_ARCHIVE.archive_enrollment
WHERE age BETWEEN 30 AND 200
ORDER BY age DESC
;
SELECT *
FROM CENSUS_ARCHIVE.archive_enrollment
ORDER BY academic_period ASC
;
SELECT COUNT(nation_of_citizenship)
FROM CENSUS_ARCHIVE.archive_enrollment
WHERE nation_of_citizenship = 'IN'
;
SELECT * FROM CIPE_STUDENT
ORDER BY academic_period DESC
;
SELECT * FROM CENSUS_ARCHIVE_MULTIYEAR
ORDER BY academic_period ASC
;
SELECT SUM(undergrad_earned_hours)
FROM CENSUS_ARCHIVE_MULTIYEAR
;
SELECT COUNT(DISTINCT native_american)
FROM CIPE_STUDENT
WHERE academic_period = 201840
;
SELECT * FROM CIPE_STUDENT
ORDER BY age DESC

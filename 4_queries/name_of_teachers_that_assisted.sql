SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests on teacher_id = teachers.id
JOIN students on student_id = students.id
Join cohorts on cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'

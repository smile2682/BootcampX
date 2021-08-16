SELECT sum(assignment_submissions.duration) as total_duration
FROM students
JOIN assignment_submissions ON students.id = student_id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'FEB12';
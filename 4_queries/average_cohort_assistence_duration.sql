-- why this result is 14...not 524...
SELECT  SUM(completed_at - started_at)/ COUNT (DISTINCT cohorts.name) AS average_total_duration
FROM assistance_requests
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id;

-- SELECT avg (total_duration) as average_total_duration
-- FROM (
--   -- from a table named total_durations
--   SELECT cohorts.name as cohort, sum(completed_at-started_at) as total_duration
--   FROM assistance_requests
--   JOIN students ON students.id = student_id
--   JOIN cohorts on cohorts.id = cohort_id
--   GROUP BY cohorts.name
--   ORDER BY total_duration
-- ) as total_durations;

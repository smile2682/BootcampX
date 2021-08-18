-- SELECT day, COUNT(DISTINCT assignments.name) AS number_of_assignments, AVG(assignment_submissions.duration) AS duration
-- FROM assignment_submissions
-- JOIN assignments ON assignment_id = assignments.id
-- GROUP BY day
-- ORDER BY day;

SELECT day, count(*) as number_of_assignments, sum(duration) as duration
FROM assignments
GROUP BY day
ORDER BY day;

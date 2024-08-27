-- select teachers.name as teacher,
-- students.name as student,
-- assignments.name as assignment,
-- (assistance_requests.completed_at-assistance_requests.started_at) as duration
-- from assistance_requests
-- join teachers on teacher_id = teachers.id
-- join students on student_id = students.id
-- join assignments on assignment_id = assignments.id
-- group by teachers.name, students.name, assignments.name
-- order by duration;

-- This uses GROUP BY which aggregates the values, meaning we need an aggregation function like SUM(assistance_reqests.comp.....) but doing this actually groups some of the identical durations together which we don't want. So the SUM and the GROUP BY both need to be removed here.

SELECT teachers.name as teacher, 
students.name as student, 
assignments.name as assignment, 
(completed_at-started_at) as duration
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
ORDER BY duration;
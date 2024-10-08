-- use the previous example but include a counter for all the assistance requests per teacher.

SELECT teachers.name as teacher, cohorts.name as cohort, count(assistance_requests.id) as total_assistances
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teacher;
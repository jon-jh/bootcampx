-- use number 8 but as a subquery. get the average of all the data in that query.

select avg(total_duration)
from(

SELECT cohorts.name as cohort, sum(completed_at-started_at) as total_duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts on cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_duration
) 
as subquery;

-- select the two records you want to display

select cohorts.name as name,
avg(assistance_requests.completed_at-assistance_requests.started_at) as average_assistance_time

-- join the tables by looking at the ERD to see where they are joined (we need info from cohorts and assistance_requests, they are joined in the middle buy the students table)

-- join students to cohorts
from cohorts join students 
on cohorts.id = students.cohort_id
-- join assistance requests to students
join assistance_requests 
on students.id = assistance_requests.student_id
-- group by cohorts.name
group by cohorts.name
order by average_assistance_time;
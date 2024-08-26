select cohorts.name,
count(students.id) as student_count
from cohorts
join students on cohorts.id = students.cohort_id
group by cohorts.name
having count(students.id)>=18
order by student_count;

-- Get all cohorts with 18 or more students.

-- Select the cohort name and the total students.
-- Order by total students from smallest to greatest.
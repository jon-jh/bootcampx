-- select the total time a cohort has spent on assignments combined.

-- labber=# select * from cohorts limit 0;
--  id | name | start_date | end_date

--  select * from assignment_submissions limit 0;
--  id | assignment_id | student_id | duration | submission_date

-- labber=# select * from students limit 0;
--  id | name | email | phone | github | start_date | end_date | cohort_id

-- use same code as question 1 but use cohort_id instead of name

select sum(duration) as total_duration from assignment_submissions join students on students.id = student_id where cohort_id = 1;
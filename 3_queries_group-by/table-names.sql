
labber=# select * from assignment_submissions limit 0;
 id | assignment_id | student_id | duration | submission_date
----+---------------+------------+----------+-----------------
(0 rows)

labber=# select * from assignments limit 0;
 id | name | content | day | chapter | duration
----+------+---------+-----+---------+----------
(0 rows)

labber=# select * from cohorts limit 0;
 id | name | start_date | end_date
----+------+------------+----------
(0 rows)

labber=# select * from famous_people limit 0;
 id | first_name | last_name | birthdate
----+------------+-----------+-----------
(0 rows)

labber=# select * from students limit 0;
 id | name | email | phone | github | start_date | end_date | cohort_id
----+------+-------+-------+--------+------------+----------+-----------
(0 rows)
select students.name as student, count(assignment_submissions.*) as submissions from assignment_submissions join students on students.id = student_id where end_date is null group by students.name having count(assignment_submissions) <100;
     student      | submissions
------------------+-------------
 Hettie Hettinger |          75
 Javonte Ward     |          84
(2 rows)

-- this code gets the name from student chart as student, counts all (.* means . all) from the submissions chart, filters out everyone other than where the end_date is null (currently enrolled) and the submissions are less than 100.
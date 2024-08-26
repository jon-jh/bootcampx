-- select * from students where name = 'Ibrahim Schimmel'; select sum(duration) from assignment_submissions where student_id = 186;

-- first I select all from each table and find the colums I want to join.
-- an easy way to see what columns are in a table is to write select * from tablename limit 0;

-- I need the duration column from assignment_submissions for student_id only for ibrahim whos id is 186 found in the students table.

-- since the name is in the students table and the duration is in the submissions table we just use the student_id found in both tables to join the two and select the name that we want.

-- in the students table the student id is just called 'id' and in the assignment_submissions table it's called 'student_id'


select sum(duration) as total_duration from assignment_submissions join students on students.id = student_id where name = 'Ibrahim
Schimmel';
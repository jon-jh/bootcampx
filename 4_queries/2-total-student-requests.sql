select count(student_id) as total_requests, 
students.name as name from assistance_requests 

join students on student_id = students.id 
where name like 'Elliot%'
group by name;
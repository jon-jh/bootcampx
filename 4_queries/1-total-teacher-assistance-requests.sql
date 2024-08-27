select count(teacher_id) as total_assistances, teachers.name
from teachers
join assistance_requests on
teacher_id = teachers.id
where name like 'Waylon%'
group by teachers.name;

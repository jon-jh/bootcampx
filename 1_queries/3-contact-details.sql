select name, id, cohort_id
from students 
where phone is null
or email is null;
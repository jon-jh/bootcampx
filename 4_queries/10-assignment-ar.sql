select assignments.id, name, day, chapter,
count(assistance_requests.id) as total_requests
from assignments join assistance_requests
on assignments.id = assistance_requests.assignment_id
group by assignments.id
order by total_requests desc;

-- Most Confusing Assignments
-- We need to know which assignments are causing the most assistance requests.

-- Instruction
-- List each assignment with the total number of assistance requests with it.

-- Select the assignment's id, day, chapter, name and the total assistances.
-- Order by total assistances in order of most to least.
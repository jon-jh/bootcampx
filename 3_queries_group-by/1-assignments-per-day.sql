-- Select the day and the total assignments.
-- Order the results by day.
-- This query only requires the assignments table.

select day, count(id) as daily_assignments from assignments group by day order by day;
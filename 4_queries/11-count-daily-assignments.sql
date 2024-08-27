-- select the day, count the number of assignmetns on each day, and the duration for assignments of each day.

SELECT day, count(id) as number_of_assignments, sum(duration) as duration
FROM assignments
GROUP BY day
ORDER BY day;
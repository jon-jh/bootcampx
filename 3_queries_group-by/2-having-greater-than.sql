select day, count(id) as daily_assignments from assignments group by day having count(id) >= 10 order by day;
-- select the two records you want to display
-- total average start time

SELECT avg(started_at-created_at) as average_wait_time
FROM assistance_requests;
-- Get the average time of an assistance request.

SELECT avg(completed_at - started_at) as average_assistance_request_duration
FROM assistance_requests;

-- note: this code does not only find the average of the first line in the table. it finds the average of every line combined, even if there are 1000 rows, for example. This therefore is not the average of one assistance request but of every single assistance request combined. 

-- for example, if there were 1000 rows in the table, it will sum up all the individual differences and then divide by 1000 to get the average duration.
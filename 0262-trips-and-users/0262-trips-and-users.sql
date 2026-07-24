# Write your MySQL query statement below


SELECT request_at AS Day,
ROUND(SUM(Status not in ('completed'))/count(*),2) AS 'Cancellation Rate'
FROM trips
WHERE client_id NOT IN (SELECT users_id from users WHERE banned='yes' and role='client')and
driver_id NOT IN (SELECT users_id from users WHERE banned='yes' and role='driver') and request_at between '2013-10-01' and'2013-10-03'
GROUP BY request_at


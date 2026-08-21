# Write your MySQL query statement below
SELECT e1.employee_id,e1.name ,count(e1.employee_id) as reports_count , ROUND(AVG(e2.age)) AS average_age
FROM employees e1 JOIN employees e2 ON e1.employee_id=e2.reports_to 
GROUP BY e1.employee_id ORDER BY e1.employee_id
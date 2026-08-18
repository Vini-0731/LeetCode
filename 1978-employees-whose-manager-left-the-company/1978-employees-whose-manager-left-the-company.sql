# Write your MySQL query statement below
SELECT e1.employee_id FROM employees e1
LEFT JOIN employees e2 on e1.manager_id=e2.employee_id
WHERE e1.salary<30000 and e2.employee_id IS  NULL AND e1.manager_id is NOT null
ORDER BY e1.employee_id
# Write your MySQL query statement below
SELECT * FROM 
(SELECT employee_id,department_id FROM employee WHERE primary_flag='Y' GROUP BY employee_id
UNION ALL
SELECT employee_id,department_id FROM employee GROUP BY employee_id HAVING COUNT(employee_id)=1) t
ORDER BY employee_id
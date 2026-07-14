# Write your MySQL query statement below
SELECT Department,name AS Employee,salary AS Salary 
FROM
(SELECT employee.id,employee.name,employee.salary,employee.departmentid,department.name AS Department,
DENSE_RANK() OVER(PARTITION BY department.name ORDER BY salary DESC) AS 'rank'
FROM employee 
JOIN department 
ON employee.departmentid=department.id) t
WHERE t.rank<=3


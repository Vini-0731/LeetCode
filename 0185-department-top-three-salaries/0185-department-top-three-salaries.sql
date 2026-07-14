# Write your MySQL query statement below
SELECT Department,name AS Employee,salary AS Salary 
FROM
(SELECT e.id,e.name,e.salary,e.departmentid,d.name AS Department,
DENSE_RANK() OVER(PARTITION BY d.name ORDER BY salary DESC) AS 'rank'
FROM employee e
JOIN department d
ON e.departmentid=d.id) t
WHERE t.rank<=3


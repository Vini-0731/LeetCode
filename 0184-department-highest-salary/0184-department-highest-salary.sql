# Write your MySQL query statement below
SELECT d.name AS Department,e.name AS Employee,e.salary AS Salary FROM employee e
JOIN department d 
ON e.departmentid=d.id
WHERE e.Salary=(SELECT Max(salary) FROM employee WHERE departmentid=d.id)

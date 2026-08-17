# Write your MySQL query statement below
SELECT a.name AS Employee
FROM Employee a
JOIN Employee  b
ON a.managerid = b.id AND a.salary > b.salary;
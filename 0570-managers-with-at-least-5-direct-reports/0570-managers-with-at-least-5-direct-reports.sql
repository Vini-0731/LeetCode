# Write your MySQL query statement below
SELECT name 
FROM employee f 
WHERE f.id IN(SELECT e.managerid FROM employee e JOIN employee m ON e.managerid=m.id GROUP BY e.managerid HAVING count(e.managerid)>=5)

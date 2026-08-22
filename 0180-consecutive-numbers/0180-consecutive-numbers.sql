# Write your MySQL query statement below
SELECT DISTINCT
  l1.Num AS ConsecutiveNums
FROM Logs l1
JOIN Logs l2
  ON l1.Id + 1 = l2.Id
 AND l1.Num   = l2.Num
JOIN Logs l3
  ON l1.Id + 2 = l3.Id
 AND l1.Num   = l3.Num;
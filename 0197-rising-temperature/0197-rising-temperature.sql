# Write your MySQL query statement below
SELECT id AS Id FROM (SELECT * ,
IFNULL(LAG(temperature) over (ORDER BY recorddate ROWS BETWEEN unbounded preceding and unbounded following),temperature) AS pre_temp ,LAG(recordDate) OVER (ORDER BY recordDate) AS pre_date
FROM weather) t
WHERE temperature>t.pre_temp AND DATEDIFF(recordDate, pre_date) = 1;

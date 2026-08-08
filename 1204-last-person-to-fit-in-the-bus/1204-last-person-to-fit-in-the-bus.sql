# Write your MySQL query statement below
SELECT person_name FROM (SELECT * ,SUM(weight) OVER(ORDER BY turn) AS R FROM queue ) P
WHERE R<=1000 ORDER BY R DESC LIMIT 1
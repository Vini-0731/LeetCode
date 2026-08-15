# Write your MySQL query statement below
SELECT contest_id,round((count(*)/(select count(*) from users))*100 ,2)as percentage FROM register
GROUP BY contest_id
ORDER BY percentage desc,contest_id asc

# Write your MySQL query statement below
SELECT id, COUNT(id) AS num
FROM (
    SELECT requester_id AS id FROM requestaccepted
    UNION ALL
    SELECT accepter_id AS id FROM requestaccepted
) t
GROUP BY id
ORDER BY num DESC
LIMIT 1;



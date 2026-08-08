# Write your MySQL query statement below
SELECT user_id,count(*) as prompt_count,round(avg(tokens),2) as avg_tokens from prompts
GROUP BY user_id
HAVING count(*)>=3 and MAX(tokens)>avg_tokens
ORDER BY avg_tokens desc,user_id 
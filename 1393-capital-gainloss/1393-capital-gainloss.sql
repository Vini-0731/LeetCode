# Write your MySQL query statement below
SELECT stock_name , 
SUM(CASE WHEN operation='buy' THEN -price ELSE price END) as capital_gain_loss
FROM stocks 
GROUP BY stock_name 
ORDER BY stock_name
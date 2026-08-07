# Write your MySQL query statement below
SELECT date_format(trans_date,'%Y-%m') AS month ,
country,COUNT(state) AS trans_count , 
SUM(CASE WHEN state='approved' THEN 1 ELSE 0 END) AS approved_count,
SUM(amount) AS trans_total_amount,
IFNULL(SUM(CASE WHEN state ='approved' THEN amount end),0) AS approved_total_amount
FROM transactions 
GROUP BY month, country

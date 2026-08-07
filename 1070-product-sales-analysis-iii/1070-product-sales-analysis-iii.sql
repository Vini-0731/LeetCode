# Write your MySQL query statement below
SELECT product_id,year AS first_year,quantity,price FROM 
(SELECT *,
RANK() OVER(PARTITION BY product_id ORDER BY year) as 'rnk'
FROM sales) as f
WHERE rnk=1

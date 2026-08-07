# Write your MySQL query statement below
SELECT product_id,'store1' AS store,p1.store1 AS price FROM products AS p1 WHERE P1.store1 IS NOT NULL 
UNION
SELECT product_id,'store2' AS store,p2.store2 AS price FROM products AS p2 WHERE P2.store2 IS NOT NULL 
UNION
SELECT product_id,'store3' AS store,p3.store3 AS price FROM products AS p3 WHERE P3.store3 IS NOT NULL 
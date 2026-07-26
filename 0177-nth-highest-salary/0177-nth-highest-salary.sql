CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  DECLARE M INT;
  SET M=N-1;
  RETURN ( 
    SELECT IFNULL((SELECT DISTINCT salary from employee
    order by salary desc LIMIT M,1),null)

      # Write your MySQL query statement below.
     
  );
END
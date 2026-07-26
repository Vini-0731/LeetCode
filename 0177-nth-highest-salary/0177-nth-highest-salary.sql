CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  SET N=N-1;
  RETURN ( 
    SELECT IFNULL((SELECT DISTINCT salary 
    from employee
    order by salary desc 
    LIMIT N,1),null)

      # Write your MySQL query statement below.
     
  );
END
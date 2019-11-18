CREATE FUNCTION getNthHighestSalary(N IN NUMBER) RETURN NUMBER IS
result NUMBER;
BEGIN
    /* Write your PL/SQL query statement below */
    select salary into result from (select salary,rank() over (order by salary desc) r from employee group by 
                                    salary) where r=N;
    
    RETURN result;
END;



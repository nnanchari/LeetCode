/* Write your PL/SQL query statement below */



select d.name as department,top3.name as employee, top3.salary from (
select Name, departmentid, Salary, dense_rank() over(partition by departmentid order by Salary desc) rank from Employee order by departmentid asc
    ) top3, department d where 
    top3.departmentid=d.id and
    top3.rank in (1,2,3);
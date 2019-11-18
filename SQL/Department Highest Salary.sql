/* Write your PL/SQL query statement below */
 
select d.name as department,e.name as employee,e.salary from (
select name,departmentid,salary,dense_rank() over(partition by departmentid order by salary desc) rn from Employee) E,
department d
where d.id=e.DepartmentId and rn=1

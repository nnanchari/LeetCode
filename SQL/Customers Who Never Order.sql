/* Write your PL/SQL query statement below */



select Name as customers from Customers c left outer join orders o
on c.id=o.customerid where o.customerid is null order by Name asc
   

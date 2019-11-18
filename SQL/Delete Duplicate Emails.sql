# Write your MySQL query statement below

delete from person where Id not in (select min_Id from 
(select email,min(Id) as min_id from  Person group by email) p
    );
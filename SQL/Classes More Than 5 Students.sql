/* Write your PL/SQL query statement below */

select class from(
select distinct CLASS,student from courses 
)
group by class
having count(*)>=5

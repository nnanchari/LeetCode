/* Write your PL/SQL query statement below */



select Request_at as day,
--round(count(if (status<>'completed',true, null)) /count(status),2) as Cancellation_Rate
round(sum(case when status<>'completed' then 1 else 0 end) /count(status),2)  as "Cancellation Rate"
from trips
where (Request_at between '2013-10-01' and '2013-10-03') 
and client_id in (select users_id from users where banned='No')
and driver_id in (select users_id from users where banned='No')
group by request_at
order by request_at asc ;
    
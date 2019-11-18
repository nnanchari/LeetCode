/* Write your PL/SQL query statement below */



select ROund(Score,2) as SCORE, dense_rank() over (order by Score desc) RANK
from scores 

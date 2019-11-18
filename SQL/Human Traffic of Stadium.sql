/* Write your PL/SQL query statement below */

select s1.id,substr(s1.visit_date,1,10) as visit_Date,s1.people from stadium s1
left join stadium  p1 on p1.id-1=s1.id 
left join stadium  p2 on p2.id-2=s1.id 
left join stadium  n1 on n1.id+1=s1.id 
left join stadium  n2 on n2.id+2=s1.id 
where s1.people >=100 and ((p1.people >=100 and p2.people >=100) or 
                           (p1.people >=100 and n1.people >=100) or
                           (n1.people >=100 and n2.people >=100)
                          )
                           order by s1.id;
                           
                        
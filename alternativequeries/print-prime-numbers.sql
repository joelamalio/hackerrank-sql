select LISTAGG(l, '&') WITHIN GROUP (ORDER BY l)
from (
select l
from (select level l from dual connect by level <= 1000),
(select level m from dual connect by level <= 1000)
group by l
having count(case l/m when trunc(l/m) then 1 end) = 2
order by l
);
select round(sqrt(power((c - a), 2) + power((d - b), 2)), 4) as result
from (
select sum(a) as a, sum(b) as b, sum(c) as c, sum(d) as d
from (
select min(lat_n) as a, null as b, null as c, null as d from station
union
select null as a, min(long_w) as b, null as c, null as d from station
union
select null as a, null as b, max(lat_n) as c, null as d from station
union
select null as a, null as b, null as c, max(long_w) as d from station
)
);
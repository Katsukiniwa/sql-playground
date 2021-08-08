select *
from members
where height > ( select avg(height) from members ) order by id
order by id;

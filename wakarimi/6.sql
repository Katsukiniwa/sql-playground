select id as ID, name as 名前, height as 身長 from members where gender = 'F';

select m.id, m.height from members m where m.gender = 'F' order by m.id;

select name as n, gender as g
from members
where g = 'F'
order by n

select m.name as n, m.gender as g from members as m where m.gender = "F" order by m.id;

select name from members where name like '%ン';

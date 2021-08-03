select id as ID, name as 名前, height as 身長 from members where gender = 'F';

select m.id, m.height from members m where m.gender = 'F' order by m.id;

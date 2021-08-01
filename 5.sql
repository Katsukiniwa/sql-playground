select gender, avg(height) from members group by gender;

select gender, max(height), min(height), sum(height), count(*), avg(height) from members group by gender order by gender desc;

select gender, avg(height) from members group by gender;

select gender, avg(height) from members group by gender having avg(height) >= 168;

select gender, count(*) from members group by gender;

select gender, count(*) from members group by gender having count(*) >= 3;

select length(name), count(*) from members group by length(name);

select *
from members
where height > ( select avg(height) from members )
order by id;

select max(score) from test_scores where subject="kokugo";

select t.student_id, t.score
from test_scores t
where t.subject='kokugo'
and t.score=(select max(score) from test_scores where subject='kokugo')
order by t.student_id;

/*
+------------+-------+
| student_id | score |
+------------+-------+
|        203 |    80 |
|        204 |    80 |
+------------+-------+
*/

select subject, max(score) 
from test_scores
where subject="kokugo"
group by subject;

/*
+---------+------------+
| subject | max(score) |
+---------+------------+
| kokugo  |         80 |
+---------+------------+
*/

select t.student_id, t.score
from test_scores t
where (
  t.subject, t.score
  ) = (
  select subject, max(score) from test_scores where subject="kokugo" group by subject
  )
order by t.student_id;

/*
+------------+-------+
| student_id | score |
+------------+-------+
|        203 |    80 |
|        204 |    80 |
+------------+-------+
*/

select student_id from test_scores where score="100";

select s.*
from students s
where s.id in ( select student_id from test_scores where score = 100 )
order by s.id;

/*
+-----+---------------------+--------+-------+
| id  | name                | gender | class |
+-----+---------------------+--------+-------+
| 203 | ほなみ たまえ       | F      | 3-4   |
| 204 | まるお すえお       | M      | 3-4   |
+-----+---------------------+--------+-------+
*/

select subject, avg(score) as avg_score
from test_scores
group by subject;

/*
+---------+-----------+
| subject | avg_score |
+---------+-----------+
| kokugo  |   70.0000 |
| rika    |   65.0000 |
| sansu   |   70.0000 |
| syakai  |   80.0000 |
+---------+-----------+
*/

select x.subject, x.avg_score
from (
  select subject, avg(score) as avg_score
  from test_scores
  group by subject
) x
where x.avg_score < 70;

/*
+---------+-----------+
| subject | avg_score |
+---------+-----------+
| rika    |   65.0000 |
+---------+-----------+
*/

-- もとのSQL
/*
select x.subject, x.avg_score from (
  select subject, avg(score) as avg_score
  from test_scores
  group by subject
) x
where x.avg_score < 70;
*/

-- with句を使ってサブクエリに別名(ここでは「x」)をつける
with x as (
  select subject, avg(score) as svg_score
  from test_scores
  group by subject
)
select x.subject, x.avg_score
from x
where x.avg_score< 70;

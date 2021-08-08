-- 生徒
create table students (
  id integer primary key,
  name text not null,
  gender char(1) not null,
  class text not null
);

insert into students (id, name, gender, class) values
(201, 'さくら ももこ' , 'F', '3-4'),
(202, 'はなわ かずひこ', 'M', '3-4'),
(203, 'ほなみ たまえ' , 'F', '3-4'),
(204, 'まるお すえお' , 'M', '3-4');

create table test_scores (
  student_id  integer  not null references students(id),
  subject text not null, -- 教科(kokugo、sansu、rika、syakai)
  score integer not null -- 点数 , primary key (student_id, subject)
);

insert into test_scores (student_id, subject, score) values -- まるこ
(201, 'kokugo', 60),
(201, 'sansu', 40),
(201, 'rika', 40),
(201, 'syakai', 50), 
(202, 'kokugo', 60),
(202, 'sansu', 70),
(202, 'rika', 50),
(202, 'syakai', 70),
(203, 'kokugo', 80),
(203, 'sansu', 80),
(203, 'rika', 70),
(203, 'syakai', 100),
(204, 'kokugo', 80),
(204, 'sansu', 90),
(204, 'rika', 100),
(204, 'syakai', 100);

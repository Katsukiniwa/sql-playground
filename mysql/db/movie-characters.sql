-- 映画
create table movies (
  id integer primary key,
  title char(128) not null unique
);

insert into movies (id, title) values
(93, '風の谷のナウシカ'),
(94, '天空の城ラピュタ'),
(95, 'となりのトトロ'),
(96, '崖の上のポニョ');

-- キャラクター
create table characters (
  id integer primary key,
  movie_id integer references movies(movie_id),
  name text not null,
  gender char(1) not null,
  constraint fk_movie_id
    foreign key (movie_id) 
    references movies (id)
    on delete restrict on update restrict
);

insert into characters (id, movie_id, name, gender) values
(401, 93, 'ナウシカ', 'F'),
(402, 94, 'パズー', 'M'),
(403, 94, 'シータ', 'F'),
(404, 94, 'ムスカ', 'M'),
(405, 95, 'さつき', 'F'),
(406, 95, 'メイ', 'F'),
(407, null, 'クラリス', 'F');

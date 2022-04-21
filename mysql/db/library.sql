-- 本
create table books(
  id integer primary key,
  title varchar(128) not null
);

-- 著者
create table authors(
  id integer primary key,
  name varchar(128) not null
);

-- 執筆
create table writings (
  book_id integer,
  author_id integer,
  constraint fk_book_id foreign key (book_id) references books (id) on delete restrict on update restrict,
  constraint fk_author_id foreign key (author_id) references authors (id) on delete restrict on update restrict,
  role varchar(128),
  primary key (book_id, author_id)
);

create index writings_book_id_idx on writings(book_id);
create index writings_author_id_idx on writings(author_id);

-- データを挿入
insert into books (id, title) values
(31, 'デスノート'),
(32, 'バクマン。'),
(33, 'ヒカルの碁');

insert into authors(id, name) values
(71, '大場つぐみ'),
(72, '小畑健'),
(73, 'ほったゆみ');

insert into writings(book_id, author_id, role) values
(31, 71, '原作'),
(31, 72, '漫画'),
(32, 71, '原作'),
(32, 72, '漫画'),
(33, 73, '原作'),
(33, 72, '漫画');

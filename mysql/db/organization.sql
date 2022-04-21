-- 会社
create table companies(
  id integer primary key,
  name varchar(128) not null unique
);

insert into companies (id, name) values (301, '株式会社XX');

-- 部署
create table departments (
  id integer primary key,
  name varchar(128) not null unique,
  company_id integer not null,
  constraint fk_company_id foreign key (company_id) references companies (id) on delete restrict on update restrict
);

insert into departments (id, name, company_id) values (2001, '開発部', 301), (2002, '人事部', 301);

-- 社員
create table employees (
  id integer primary key,
  name varchar(128) not null unique,
  department_id integer not null,
  constraint fk_department_id foreign key (department_id) references departments (id) on delete restrict on update restrict
);

insert into employees (id, name, department_id) values
(10001, '社員1', 2001),
(1002, '社員2', 2001),
(10003, '社員3', 2001),
(10004, '社員4', 2002),
(10005, '社員5', 2002),
(10006, '社員6', 2002);

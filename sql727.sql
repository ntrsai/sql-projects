create database sai143;
use sai143;
create table teachers(
t_id int ,
name varchar(30)
);
select * from teachers;
alter table teachers add primary key(t_id);
 insert into teachers values(1,"harsh"),(2,"sai"),(3,"vijay");
 insert into teachers values(4,"rahull"),(5,"mahi");
 create table subject(
 s_id int primary key,
 name varchar(40),
 t_id int ,
foreign key (t_id) references teachers(t_id));
drop table subject;
select * from subject;
insert into subject values(1,"english",2),(2,"hindi",1);
select subject.s_id,subject.name from subject where t_id in(select t_id from subject);
desc teachers;
select teachers.name,subject.name from subject inner join teachers on subject.s_id=teachers.t_id;
insert into subject values(3,2,1);
select * from subject right join teachers on subject.s_id=teachers.t_id;

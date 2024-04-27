use sai143;
create table subject_2(
s_id int primary key auto_increment,
s_name varchar(40) not null
);
select * from subject_2;
insert into subject_2(s_name) values("english"),("maths"),("science"),("histroy");

create table teacher_2(
t_id int primary key auto_increment,
t_name varchar(40) not null);
select * from teacher_2;
insert into teacher_2(t_name) values("sai"),("rahul"),("dasu");

create table student_2(
sub_id int primary key auto_increment,
sub_name varchar(30) not null,
s_id int,
t_id int,
foreign key (s_id) references subject_2(s_id)
);
insert into student_2(sub_name)values("aaa"),("bbb"),("ccc");
select * from student_2;
insert into student_2(sub_name,s_id,t_id)values("ccc",1,3);
select * from student_2 where s_id in(select s_id from student_2);

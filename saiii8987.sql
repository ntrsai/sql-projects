use amazon;
create table student(
id int primary key,
name varchar(40),
age int);
insert into student values(1,"sai",20),(2,"rohit",21),(3,"rahul",32),(4,"rahuuu",23);
 select * from student;
 select *from student order by age desc limit 3,1;
 select * from student where id>all (select id from student where id>2);
 select *from student_2;
use company;
select * from employees;
select * from employees where id in(select max(salary) from employees);
 
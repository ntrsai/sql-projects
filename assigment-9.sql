show tables;
desc student;
drop table student;
create table student(
stu_id int primary key,
stu_name varchar(40) not null,
stu_address varchar(60) not null,
stu_phno bigint not null,
stu_percentage int not null);

insert into student values(1,"rahul","agra",9557806625,85),(2,"ankit","delhi",8855664471,75),(3,"shailendra","noida",7213457896,92);
select * from student;

select stu_id as student_id,stu_name as student_name,stu_address as address,stu_percentage as percentage from student where stu_percentage>80;

update student
set stu_percentage=2
 where stu_id=1;
 
delete from student where stu_id=2;

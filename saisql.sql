show tables;
drop table  college;
create table college(id int primary key,
department varchar(120) not null,
student_name varchar(80) not null,
student_marks float not null,
student_paid_fees float not null,
attendence float not null);
select * from college;
insert into college values(1,"commerce","rohit",56,5600,78),(2,"it","sai",65,7800,87),(3,"medicel","raju",65,8790,76);
select * from college;
select department from college group by department;
select * from college where student_paid_fees=(select min(student_paid_fees) from college);
select student_name,count(student_name) from college group by name having min(student_marks) >50;
select * from college;

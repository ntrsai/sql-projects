create table employees(
id int primary key,
name varchar(40) not null,
department varchar(70) not null,
salary float not null,
location varchar(60) null);
select * from employees;
insert into employees values(1,"jay","HR",5000,"chennai"),(2,"yash","management",7000,"pune"),(3,"annand","training",6000,"chennai"),(4,"ruhi","sales",4000,"delhi"),(5,"pratik","admin",3000,null);
select * from employees;

select id,name from employees where location in("chennai","mumbai","pune");
select name from employees where location not in("null");
select * from employees order by salary asc;
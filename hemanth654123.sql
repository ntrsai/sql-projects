use amazon;
create table employee_5(
e_id int primary key,
e_name varchar(40),
e_designation varchar(30),
m_id int);
select * from employee_5;
desc employee_5;
insert into employee_5 values(1,"sai","dev",5),(2,"rohit","dev",5),(3,"anju","gamer",4),(4,"babu","hr",5),(5,"ranju","hr_manager",6),(6,"rajuu","ceo",0);
select * from employee_5;
select e.e_name,e.e_designation,m.e_name as manager ,m.e_designation from employee_5 as e, employee_5 as m where e.e_id=m.m_id;
show tables;
select * from subjects;
select * from teacher;
select * from subjects natural join teacher;

show tables;
select* from subjects left join teacher on subjects.s_id=teacher.t_id;


create table customer_10(
c_id int primary key,
c_name varchar(50));

create table product_10(
p_id int primary key,
p_name varchar(40),
price float ,
c_id int,
foreign key (c_id) references customer_10(c_id));
 insert into customer_10 values(1,"sai"),(2,"rahul"),(3,"rohit"),(4,"babi"),(5,"tai");
 insert into product_10 values (1,"chocolate",1200,1),(2,"dairymilk",1300,3),(3,"chocobar",150,5);
 select * from customer_10;
 select * from product_10;
 select * from customer_10 left join product_10 on customer_10.c_id=product_10.p_id
 union
 select * from customer_10 right join product_10 on customer_10.c_id=product_10.p_id;
 
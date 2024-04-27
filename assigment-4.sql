show tables;


create table employee(
id int primary key,
name varchar(50) not null,
salary float not null,
email varchar(80) not null,
dob date not null
);
select * from employee;

insert into employee(id,name,salary,email,dob)values(1,"xyz",3000.89,"xyzgmail.com","1990-08-30"),(2,"abc",2300.90,"abc@gmail.com","1980-03-21");
select * from employee;
 update employee
 set salary=4000.68,
 dob="1993-08-30"
 where id=1;
 
 delete from employee where id=2;
 
 
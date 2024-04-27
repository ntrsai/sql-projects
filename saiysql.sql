show tables;
create table company(
id int primary key ,
name varchar(70) not null,
department varchar(50) not null,
salary float not null,
city varchar(80) not null);
select * from company;
insert into company values(1,"mahesh","mba",56000,"hyderabad");
insert into company values(2,"bunny","mca",96000,"pune");
insert into company values(3,"ntr","it",54000,"mumbai");
insert into company values(4,"rajesh","mechanic",66000,"rajasthan");
select * from company;
select * from company where city not in("mumbai");
select * from company where id !=3;
select * from company where name like"b%";
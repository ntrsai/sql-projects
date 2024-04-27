use  amazon;
create table patient_1(
id int primary key,
name char(20) not null,
age int not null,
dob date not null
);
select * from appointment_1;
select * from patient_1;
drop table appointment_1;
create table appointment_1(
id int primary key,
slot int not null,
date date not null,
reson varchar(50) not null,
paid float not null);
insert into patient_1 values(1,"sai",21,"2005-04-11"),(2,"hema",23,"2003-09-12"),(3,"raj",32,"2001-09-11");
insert into appointment_1 values(1,201,"2020-2-12","stomatch pain",123455),(2,202,"2003-09-12","fever",78678),(3,321,"2008-09-13","fever",134358);


drop table payment_1;

select * from payment_1;
create table payment_1(
payment_id int primary key auto_increment,
a_id int,
p_id int,
foreign key (a_id) references patient_1(id),
foreign key (p_id) references appointment_1(id)
); 
drop table amount;
 select * from patient_1 where id in(select a_id from payment_1);
 insert into payment_1(a_id,p_id) values(1,1);
 select * from appointment_1 where id in(select p_id from payment_1);
 select * from payment_1;

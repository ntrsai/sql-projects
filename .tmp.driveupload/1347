create database car_showroom;
use car_showroom;
create table inventory(
stores_name varchar(70) not null,
price float not null,
model char(60) not null,
manfacturing_date date not null,
fuel_type varchar(80) not null
);
select * from inventory;

create table customer(
stores_customer_id int primary key,
name varchar(70) not null,
address varchar(60) not null,
phone_number bigint not null,
email varchar(80) not null
);
select * from customer;

create table sale(
invoice_number bigint not null,
car_id int not null,
customer_id int not null,
sale_date date not null,
mod_payment varchar(80) not null,
employee_id  int primary key,
selling_price float not null
);
select * from sale;

create table employee(
employee_id int primary key,
name varchar(60) not null,
dob date not null,
doj date not null,
designation varchar(60) not null,
salary float not null
);
select * from employee;






create database hospitality;
use hospitality;

create table patient(
p_id int primary key,
p_first_name varchar(30),
p_last_name varchar(30),
date_of_birth date ,
address varchar(50),
reason varchar(30)
);
desc patient;

insert into patient(p_id,p_first_name,p_last_name,date_of_birth,address,reason)
values(1,"sai","keella","2004-04-11","mankoli","fever"),(2,"rohit","zanjuri","2001-09-12","majiwada","back pain"),
(3,"sagar","bheemA","2004-07-11","HYDERBAD","fever"),(4,"manoj","kalke","2001-03-17","besi","leg injury"),
(5,"raju","kumar","1994-09-18","sasanam","dengue"),(6,"ramu","sunadram","2007-04-21","gokanapuram","diabitie"),
(7,"prem","kumar","2006-11-01","makanpuram","back pain"),
(8,"joga","pitta","2009-09-17","sasanam","fever"),(9,"manikanta","tekala","2004-08-21","ramachandrapuram","heart disease"),
(10,"praveen","anishetti","2009-08-01","guntur","cancer");
select * from patient;

create table doctor(
d_id int primary key,
d_first_name varchar(30),
d_last_name varchar(39));

insert into doctor(d_id,d_first_name,d_last_name)values(1,"sunil","reddy"),(2,"siddu","anisetti"),(3,"susma","amboti"),(4,"hansi","malapada"),(5,"harsh","vardana"),(6,"madhav","reddy"),
(7,"usha","ranide"),(8,"hema","chikala"),(9,"sruthi","anisetti"),(10,"rakesh","buddana");
select * from doctor;

create table appointment(
appointment_id int primary key auto_increment,
p_id int,
d_id int,
appointment_date date,
appointment_time int,
status varchar(30),
foreign key(p_id)references patient(p_id),
foreign key(d_id)references doctor(d_id));

select * from appointment;
insert into appointment (p_id,d_id,appointment_date,appointment_time,status) values(1,6,"2024-09-11","11.00","confirmed"),(3,7,"2024-09-11","11.30","confirmed"),(7,6,"2024-09-11","12.00","confirmed"),
(4,8,"2024-09-12","12.00","pending"),(5,9,"2024-09-15","11.00","pending"),(6,3,"2024-09-18","10.30","pending"),(8,4,"2024-09-19","12.30","pending"),
(10,1,"2024-09-24","11.00","confirmed"),(2,1,"2024-09-26","12.00","pending");
select * from appointment where p_id in(select p_id from patient);
select * from patient inner join  doctor  on patient.p_id=doctor.d_id;
select * from patient right join  doctor  on patient.p_id=doctor.d_id;
select * from doctor left join  patient  on doctor.d_id=patient.p_id;
 
desc patient;
desc appointment;
desc doctor; 
create table medical_histroy(
h_id int primary key auto_increment,
p_id int,
diagnosis_date date,
treatment varchar(30),
foreign key(p_id) references patient(p_id));

insert into medical_histroy(p_id,diagnosis_date,treatment) values(1,"2004-04-12","fever"),(2,"2001-09-13","back pain"),
(3,"2004-07-12","fever"),(4,"2001-03-18","leg injury"),
(5,"1994-09-19","dengue"),(6,"2007-04-22","diabitie"),
(7,"2006-11-02","back pain"),
(8,"2009-09-18","fever"),(9,"2004-08-22","heart disease"),
(10,"2009-08-02","cancer");
select * from medical_histroy;
drop table medical_histroy;
desc medical_records;
select * from medical_records;
select * from medical_histroy as m inner join patient on m.h_id=patient.p_id;
select * from medical_histroy where p_id in(select p_id from patient);
select * from medical_histroy as m inner join  patient  on m.h_id=patient.p_id;
select * from patient right join  medical_records as m on patient.p_id=m.h_id;
select * from medical_histroyas m left join  patient  on m.h_id=patient.p_id;
select treatment,p_first_name,p_last_name from medical_histroy as m inner join patient on m.h_id=patient.p_id;
select p_first_name,p_last_name,address,d_first_name,d_last_name,reason from doctor inner join patient on doctor.d_id=patient.p_id;

create table payment(
payment_id int primary key auto_increment,
p_id int,
medical_fees float,
foreign key(p_id) references patient(p_id));
insert into payment(p_id,medical_fees) values(2,"500.00"),(3,"450.00"),(1,"4500.00"),(4,"5400.00"),(5,"6700.00"),(6,"8700.00"),(7,"900.00"),
(8,"1200.00"),(9,"1350.00"),(10,"6750.00");
select * from payment;
select p_first_name,p_last_name,address,medical_fees from payment inner join patient on payment.payment_id=patient.p_id;


 


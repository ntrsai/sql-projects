use amazon;
create table product(
p_id int primary key,
name varchar(30) not null,
price float not null
);
select * from product;
drop table product;
create table user(
u_id int primary key,
name varchar(60) not null,
age int not null);
select * from user;
insert into product values(1,"samsung_phone",45000),(2,"viva",6511),(3,"apple_phone",54000);
insert into user values(1,"sai",21),(2,"rahul",32),(3,"hema",23);
create table cart(
id int not null,
a_id int,
b_id int,
foreign key (a_id) references product(p_id),
foreign key (b_id) references user(u_id));
select * from product inner join user on user.u_id = product.p_id;
select * from user left join product on user.u_id=product.p_id;
select * from user right join product on user.u_id=product.p_id;
select * from cart;
select * from product where p_id in(select a_id from cart);
select * from user where u_id in(select b_id from cart);
drop table cart;
insert into cart values(1,1,1);
select name from product where cart in(select a_id from product);
select * from product inner join user on user.u_id=product.p_id;

drop table cart;
 
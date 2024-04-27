use amazon;
create table customer_3(
c_id int primary key,
c_name varchar(30) );
insert into customer_3 values(1,"aa"),(2,"bb"),(3,"cc");
insert into orders values(1,"apple_phone",1),(2,"orange_phone",3),(3,"i_phpne",1);
select * from orders;
create table orders(
order_id int primary key,
order_name varchar(30),
c_id int,
foreign key(c_id) references customer_3(c_id));

create table Products_3 (
    ProductID int primary key,
    p_Name VARCHAR(50),
    Price float not null
);
drop table products_3;
insert into products_3 values(1,"amazon",5600),(2,"flipcart",8700),(3,"mesho",9800);

create table OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    Order_id INT,
    Productid int,

    FOREIGN KEY (order_id) references orders(order_id),
    FOREIGN KEY ( ProductID) references Products_3(ProductID)
);
drop table orderdetails;
insert into orderdetails values(1,2,3);

select * from orderdetails inner join orders on orderdetails.order_id=orders.order_id;

select * from orderdetails where order_id in (select order_id from orderdetails);

select * from customer_3;
select * from orders;
select * from products_3;
select * from orderdetails;
desc customer_3;
desc orders;
desc products_3;
desc orderdetails;



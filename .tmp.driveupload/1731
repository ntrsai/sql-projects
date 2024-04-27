create table movie(
movie_id int primary key,
movie_name varchar(40) not null,
category varchar(30) not null,
release_date date null,
production_cost bigint not null,
business_cost bigint  null);

select * from movie;
 insert into movie values(001,"hindi_movie","musical","2018-04-23",124500,130000),(002,"tamil_name","action","2017-05-17",112000,118000),(003,"english_movie","horror","2017-08-06",245000,36000),(004,"bengali_movie","adventure","2017-01-04",72000,100000),(005,"telugu_movie","action",null,100000,null),(006,"punjab_movie","comedy",null,30500,null);
select * from movie; 
select movie_name,category from movie;

select max(production_cost),max(business_cost) from movie order by movie_id,movie_name;

select max(production_cost)-max(business_cost) from movie order by movie_id,movie_name;


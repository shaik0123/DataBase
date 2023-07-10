create table customer(id int identity(1,1),Name varchar(20),phone bigint,address varchar(20));

insert into customer (Name,phone,address)values('ismail','9988776695','vjw'),('pinky','8877665544','knl'),('reshma','1122334455','hyd');
select * from customer;

alter table customer add country varchar(20),salary int, pincode int;
select * from customer;

update customer set country='india',salary='20000',pincode='500500' where Name='shaik';
update customer set country='india',salary='30000',pincode='500400' where Name='ismail';
update customer set country='us',salary='40000',pincode='500300' where Name='pinky';
update customer set country='uk',salary='50000',pincode='500200' where Name='reshma';

select * from customer;

select count(Name) from customer where country='india';

select min(salary) from customer; 
select max(salary) from customer;
select avg(salary) from customer;

create table ordertable (id int primary key identity(1,1),Name varchar(20),quantity int,rating float); 

insert into ordertable(Name,quantity,rating)values('mobile','20','4.5'),('headset','30','3.5'),('panels','25','4.0');
select * from ordertable;


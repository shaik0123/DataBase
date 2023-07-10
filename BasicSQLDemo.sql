create database Student;

use Student;
create table std 
( std_id int primary key,
 std_name varchar(20),
 std_age int
 );

 insert into std (std_id,std_name,std_age) values ('1','ram','20');
 select * from std;
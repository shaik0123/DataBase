create database New_Emp_Pay_Roll;


use New_Emp_Pay_Roll;

create table emp_table (emp_id int primary key  identity(1,1),
						emp_name varchar(20),
						emp_salary int,
						emp_statDate date
						);

insert into emp_table(emp_name,emp_salary,emp_statDate)values('manjunath','25000','2020-01-01'),('pavan','28000','2022-01-01'),('niha','35000','2022-01-01'),('sachin','45000','2023-01-01'),('mamtha','55000','2023-01-01');
select *from emp_table;


select * from emp_table where emp_statDate between cast('2022-12-01' as date) and getdate();

alter table emp_table add gender char(1);
select *from emp_table;

update emp_table set gender = 'M' where emp_name='manjunath' or emp_name='pavan'or emp_name='sachin';
update emp_table set gender = 'F' where emp_name='niha'or emp_name='mamtha';
select *from emp_table;

select sum(emp_salary) from emp_table where gender='F';

select min(emp_salary) from emp_table;
select max(emp_salary) from emp_table;
select avg(emp_salary) from emp_table;

select count(emp_name) from emp_table where gender = 'M';

select *from emp_table;

alter table emp_table add phone bigint,department varchar(20),address varchar(20) default 'hyd';
select *from emp_table;

alter table emp_table add basicpay int,deductions int,taxablepay int,incometax int,netpay int;
select *from emp_table;

alter table emp_table drop column department  ;


create table dept (dept_id int primary key identity(1,1),
					dept_name varchar(20)
		
					);
select * from dept;
 insert into dept(dept_name)values('hr'),('finance'),('management');

 alter table emp_table add dept_id int references dept(dept_id);


 alter table dept add dept_no int;
 select * from dept;

 update dept set dept_no = '111' where dept_name='manager';
 update dept set dept_no = '222' where dept_name='hr';
 update dept set dept_no = '333' where dept_name='finance';
 update dept set dept_no = '444' where dept_name='management';
 select * from dept;

 alter table dept add deptData varchar(20);
 select * from dept;

 alter table dept drop column deptData;
 select * from dept;

 insert into dept(dept_name,dept_no)values('admin','555'); 
  select * from dept;

update dept set dept_no='666' where dept_id ='1';
 select * from dept;




drop table dept;



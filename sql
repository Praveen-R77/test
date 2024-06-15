create  database practice;
use practice;
show tables;
create table employee (
emp_id int primary key,
emp_code int,
emp_name varchar (30) not null,
dep_id int not null,
phone_no varchar(20) not null
);
insert into employee values (1,101,'Ram',1001,'2365478965'),
							(2,102,'Ram',1002,'2365478965'),
							(3,103,'Ram',1003,'3365478965'),
							(4,104,'Ram',1004,'4365478965'),
							(5,105,'Ram',1005,'5365478965');
select  count(*) from employee; 
call practice.employee_count();   

select * from employee where emp_code =102;
call practice.employee_with_code(105);

set @maxempcode = 0;
call practice.get_max_code(@maxempcode);

select @maxempcode;
set @x = 2;
call practice.get_dep_code_from_id(@x);
select @x;
call practice.insert_employee(6,106,'Raj',1006,'9625831471');
select * from employee;
--Functions
select add_two_num1(2,5);
create table table_function(
id int,
name varchar(100)
);
show tables;
insert into table_function values (100,'mike'),
								 (100,'sam'),
                                 (100,'Adam'),
                                 (100,'carol');
select * from table_function;
call getResultSet(100);
                              


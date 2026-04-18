use nauman
drop table students


create table students(
student_id int primary key,
student_name varchar(50),
student_age int,
student_course varchar(50),
student_marks int);


insert into students
values(1,"Nauman",21,"IMCA",87),
(2,"Yash",22,"BCA",78),
(3,"Anas",31,"MCA",64),
(4,"Ali",20,"IMCA",81),
(5,"Taha",28,"MBA",84),
(6,"Sahil",21,"B.COM",60),
(7,"Ayan",21,"M.COM",72),
(8,"Rehan",24,"IMCA",78),
(9,"Azim",28,"MCA",64),
(10,"Saif",19,"MSC",75);






create table employee(
employee_id int primary key,
employee_name varchar(50),
employee_department varchar(50),
employee_salary int);




insert into employee
values(1,"Nauman","HR",45000),
(2,"Yash","MANAGER",28000),
(3,"Anas","CA",35000),
(4,"Ali","SALESMAN",41000),
(5,"Taha","HR",58000),
(6,"Sahil","MANAGER",62000),
(7,"Ayan","CA",78000),
(8,"Rehan","SALESMAN",24000),
(9,"Azim","HR",56000),
(10,"Saif","CA",65000);



select * from students

select * from employee


use nauman


select * from students
WHERE student_marks>70



select * from students
where student_age>=21;


select * from students
where student_course="IMCA"



select * from employee
where employee_salary>=50000


select * from employee
where employee_department="HR"



select * from employee
where employee_department="HR" AND employee_salary>=50000;



select * from employee
where employee_department="HR" OR employee_salary>=50000;



select * from students
where student_course="IMCA" AND student_marks>70;



select * from students
where student_age>=20 AND student_course="BCA";


select * from students
where student_course IN("IMCA","BCA");



select * from students
where NOT student_marks>=70;


select * from employee
where employee_salary between 40000 AND 70000;



select * from employee
where employee_name like 'A%';



select * from students
where student_name like '%A';


select * from employee
order by employee_salary Desc;



select * from employee
order by employee_salary asc;


select  * from employee
limit 5;

drop table school

create table school(
student_id int primary key,
student_name varchar(50),
student_age int,
student_department varchar(50),
student_marks int,
library_access varchar(50),
student_fees int,
student_gender varchar(50));



insert into school values
(1,"Nauman",21,"IMCA",87,"YES",42000,"MALE"),
(2,"riya",22,"BCA",78,"NO",47000,"FEMALE"),
(3,"jiya",31,"MCA",64,"NO",58000,"FEMALE"),
(4,"Ali",20,"IMCA",81,"YES",45000,"MALE"),
(5,"Taha",28,"MBA",84,"YES",60000,"MALE"),
(6,"heer",21,"B.COM",60,"NO",78000,"FEMALE"),
(7,"Ayan",21,"M.COM",72,"YES",72000,"MALE"),
(8,"Rehan",24,"IMCA",78,"NO",87000,"MALE"),
(9,"Azim",28,"MCA",64,"YES",49000,"MALE"),
(10,"Neha",19,"MSC",75,"NO",64000,"FEMALE");



select * from school







use nauman



show tables;


select * from students
select * from employee


select avg(student_marks) from students

select student_name ,avg(student_marks)
from students
group by student_name
having avg(student_marks)>70;

show databases
use nauman
select * from employee


show tables

select * from students













select student_course, avg(student_marks)
from students
group by student_course
having avg(student_marks)



select * from students











select employee_department,max(employee_salary)
from employee
group by employee_department
having max(employee_salary);



select *from employee;



select employee_department,sum(employee_salary)
from employee
group by employee_department
having sum(employee_salary);


select employee_department,count(employee_name)
from employee
group by employee_department
having count(employee_name);




select * from employee limit 5;


select * from employee
where employee_department IN ('HR',"CA");



select * from employee
where employee_salary between 50000 AND 80000;


select * from employee
where employee_name like 'a%';


select max(employee_salary) from employee;

select count(employee_name) from employee;

select count(employee_department) from employee;



select student_course, avg(student_marks) as nauman
from students
group by student_course;


select student_course, avg(student_marks) as nauman
from students
group by student_course
having avg(student_marks)>70;



select student_name,student_marks
from students
order by student_marks desc
limit 3;



select * from employee;


select employee_name,employee_salary 
from employee
order by employee_salary desc
limit 3;



select * from employee;


select employee_name,employee_department,employee_salary
from employee
where employee_department in("HR","CA")
and employee_salary between 30000 and 90000;



select * from school



select * from school
where student_fees>60000 and student_gender='MALE';


select * from school
order by student_marks Desc

select * from school
where student_fees between 40000 and 80000


select * from school
where student_department In ('IMCA')


select * from school
limit 6



select * from employee


select * from employee
where employee_department='CA'


select * from employee
where employee_name Like 'a%'


select * from employee
order by employee_salary desc limit 3


select * from employee
where Not employee_department='CA'


select * from employee
order by employee_salary desc limit 1,1



select * from employee


select employee_name,employee_department,avg(employee_salary)
from employee
group by employee_name,employee_department;


select employee_name,employee_department
from employee
group by employee_name,employee_department



select * from employee



select employee_name,avg(employee_salary) as av
from employee
group by employee_name
having avg(employee_salary)



alter table school rename to student

select * from student


select student_name,student_department,avg(student_marks)
from student
group by student_name,student_department
having avg(student_marks)>75



select * from student 
order by student_marks desc limit 3


select * from student


select * from student
where student_age between 21 and 30 AND student_department IN ('BCA','IMCA')


select avg(student_fees) from student

select count(student_fees) from student



select * from student

select count(student_id) from student


select min(student_marks),max(student_marks) from student


select student_department,sum(student_marks)
from student
group by student_department


select * from student


select student_gender,count(library_access)
from student
group by student_gender


select * from student

select student_department,avg(student_marks)
from student
group by student_department



select student_department,avg(student_marks)
from student
group by student_department
having avg(student_marks)>80


select * from student
order by student_marks desc limit 1,1

select * from student
where student_marks between 60 and 80


select * from student
where student_department IN ('BCA','IMCA')


select count(distinct 'employee_department') from student



select * from student
where student_name LIKE 'a%';


alter table student rename to stu



create table student(
id int primary key,
name varchar(50),
course varchar(50));



create table marks(
marks_id int primary key,
student_id int,
marks int,
foreign key (student_id) references student(id) on delete cascade);


insert into student values
(1,'nauman','bca'),
(2,'ali','bba'),
(3,'saif','mba'),
(4,'taha','mca');

insert into marks values
(101,1,85),
(102,2,45),
(103,2,55),
(104,3,95);



select * from student;
select * from marks;

alter table student ADD email varchar(50);

describe student;


alter table student modify name varchar(60);

alter table student rename column email to e_mail;

alter table student drop column e_mail

select * from student

delete from student where id=3;

select * from student;
select * from marks;

truncate table marks;
select * from students;
select * from marks;

drop table marks;
drop table student;


CREATE TABLE student (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  course VARCHAR(30),
  marks INT
);

INSERT INTO student (id, name, course, marks) VALUES
(1, 'Aman', 'BCA', 78),
(2, 'Neha', 'MCA', 90),
(3, 'Riya', 'BBA', 62),
(4, 'Karan', 'BCA', 55),
(5, 'Meena', 'MCA', 88);

select * from student


SET SQL_SAFE_UPDATES = 0;

select * from student
where course='BCA' order by marks asc;




update student
set marks=90 
where name='karan';


select * from student;

delete from student where name='meena';


select name,course from student
where course='BCA';


select * from student where name like 'a%';


delete from student where id=4;


select * from student
where marks>60  order by name asc;



CREATE TABLE customers (
  customer_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50),
  city VARCHAR(50)
);


CREATE TABLE orders (
  order_id INT PRIMARY KEY AUTO_INCREMENT,
  customer_id INT,
  product VARCHAR(50),
  amount DECIMAL(10,2),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

use Nauman

INSERT INTO customers (name, city) VALUES
('Rohan', 'Mumbai'),
('Priya', 'Delhi'),
('Karan', 'Pune'),
('Neha', 'Chennai');

select * from customers;
select * from orders;

INSERT INTO orders (customer_id, product, amount) VALUES
(1, 'Laptop', 50000),
(2, 'Mobile', 20000),
(3, 'Mouse', 1500),
(4, 'Headphones', 3000);


select * from customers;
show tables;

select customers.customer_id,customers.name,orders.order_id,orders.amount
from customers
inner join orders
on customers.customer_id=orders.customer_id;


select * from customers;
select * from orders;


select customers.name,orders.order_id,orders.amount
from customers
left join orders
on customers.customer_id=orders.customer_id;


select * from customers;
select * from orders;

use nauman;







select customers.name,customers.city,orders.product,orders.amount
from customers
left join orders
on customers.customer_id=orders.customer_id
UNION
select customers.name,customers.city,orders.product,orders.amount
from customers
right join orders
on customers.customer_id=orders.customer_id



drop table orders;



CREATE TABLE Orders (
    order_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10),
    customer_name VARCHAR(100),
    region VARCHAR(50),
    state VARCHAR(50),
    city VARCHAR(50),
    category VARCHAR(50),
    product_name VARCHAR(100),
    quantity INT,
    unit_price DECIMAL(10,2),
    discount_percent DECIMAL(5,2),
    total_sales DECIMAL(12,2),
    sales_date DATE,
    payment_method VARCHAR(50),
    delivery_status VARCHAR(50),
    customer_segment VARCHAR(50)
);


 SHOW VARIABLES LIKE 'secure_file_priv';
 
 select * from Orders;
 
 use nauman;
 
 
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Excel_Advanced_Sales_Dataset_2000.csv'
INTO TABLE Orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(order_id, customer_id, customer_name, region, state, city, category,
 product_name, quantity, unit_price, discount_percent, total_sales,
 sales_date, payment_method, delivery_status, customer_segment);
 
 
 
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Excel_Advanced_Sales_Dataset_2000.csv'
INTO TABLE Orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(order_id, customer_id, customer_name, region, state, city, category,
 product_name, quantity, unit_price, discount_percent, total_sales,
 @sales_date, payment_method, delivery_status, customer_segment)
SET sales_date = STR_TO_DATE(@sales_date, '%d-%m-%Y');
 
 
 select * from Orders limit 10;
 
 
 CREATE TABLE hr_analytics (
    employee_name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    department VARCHAR(50),
    job_role VARCHAR(50),
    education VARCHAR(50),
    experience_years INT,
    joining_date DATE,
    salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    performance_rating INT,
    attrition VARCHAR(5),
    work_location VARCHAR(20),
    marital_status VARCHAR(20),
    training_hours INT,
    last_promotion_year INT,
    job_satisfaction INT
);
 

select * from hr_analytics


 
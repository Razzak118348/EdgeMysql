create database shop;
use shop;


create table student(
roll int primary key,
name varchar(20),
marks int not null,
grade varchar(4),
city varchar(10)
);

INSERT INTO student (roll, name, marks, grade, city)
VALUES
(101, "Anil", 32, "C", "Pune"),
(102, "Sita", 75, "A", "Mumbai"),
(103, "Raj", 54, "B", "Delhi"),
(104, "Meera", 45, "B", "Chennai"),
(105, "Vikram", 20, "D", "Kolkata"),
(106, "Nina", 88, "A", "Bangalore"),
(107, "Anil", 32, "C", "Pune");

select * from student; 

select name,marks from student;

select * from student where grade="A";
select * from student where marks > 80;
select * from student where marks between 70 and 90;
select * from student where city in ("Kolkata","Bangalore");
select * from student where city not in  ("Mumbai","Bangalore");

select * from student where marks>40 limit 3;

select  * from student order by marks desc limit 3; 
select max(marks) from student;
select avg(marks) from student;
select count(name) from student; 

select city,name ,count(roll) from student group by city,name ;
select city,avg(marks) from student group by city order by city;

select grade,count(roll) from student group by grade order by grade;
select count(name),name,city from student group by name, city having max(marks)>70;
select city,name,count(roll) from student group by city ,name having max(marks)>80;
                                         

select city from student
where grade ="A"
group by city
having max(marks)>70
order by city ;

-- safe mode off
SET SQL_SAFE_UPDATES =0;

update student
set grade ="O"
where grade ="A";

update student 
set grade ="B"
where marks between 60 and 70;

delete from student 
where marks < 33;

SELECT * from student;

CREATE TABLE dept(
id int primary key,
course varchar(20)
);

create table treacher(
id int primary key,
name varchar(20),
dept_id int,
foreign key (dept_id) references dept(id)
);





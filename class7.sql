-- MySql
create table student_list(
id int not null,
student_name varchar(20),
department varchar(20),
cgpa double,
unique(id)
);
insert into student_list(id,student_name,department,cgpa)
values(2102043,"Amit","CSE",3.975),(2102044,"Porag","CSE",3.56),(2102045,"Utal","CSE",3.234),(2102078,"Sayem","EEE",3.123),
(2102154,"Abid","ECE",3.556);
select * from student_list;

-- All Server
create table teacher_list(
id int not null,
name varchar(20),
age int,
constraint teacher unique(id,name)
);
-- If I want to add unique
create table course_list(
id int not null,
course_name varchar(20),
course_code varchar(20)
);

Alter table course_list
add unique(id);


-- If I want to add unique at any server
Alter table course_list
add constraint course unique(id,course_code);

-- If I want to drop a column as unique()
Alter table course_list
drop index course;

-- If I want to add primary key
create table department_list(
id int not null,
department_name varchar(20),
building varchar(20),
primary key(id)
);

-- If I want to add primary key differently
create table building_list(
id int not null,
building_name varchar(20),
building_floor varchar(20),
primary key(id)
);
create table building_list1(
id int not null,
building_name varchar(20),
building_floor varchar(20)
);

alter table building_list1
add primary key (id);

create table building_list2(
id int not null,
building_name varchar(20),
building_floor varchar(20)
);

alter table building_list2
add constraint building_id primary key(id,building_name);


alter table building_list1
drop primary key;

create table building_list3(
id int not null,
building_name varchar(20) not null,
building_floor varchar(20)
);
alter table building_list3
add constraint build primary key(id,building_name);


alter table building_list3
drop constraint build;

create table building_list4(
id int not null,
building_name varchar(20),
building_floor varchar(20)
);
alter table building_list4
add constraint buil primary key(id);

alter table building_list4
drop constraint id;


create table building_list5(
id int not null,
building_name varchar(20),
building_floor varchar(20)
);
alter table building_list5
add constraint bui primary key(id);

alter table building_list5
drop constraint bui;

alter table building_list5
drop constraint id;
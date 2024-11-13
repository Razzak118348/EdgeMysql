/*create table Class(
class_number int ,
class_name varchar(10),
class_code int ,
class_loc varchar(20)

);

insert into Class(class_number,class_name,class_code,class_loc)
value (1,"Database",21,"HSTU"),
(2,"Python",23,"HSTU"),
(3,"Ms word",27,"Wajed");

select * from Class
where class_name = "Python";

select * from Class 
order by class_code desc ;

select * from Class
where class_number=3 and class_loc="Wajed";
*/
create table Employ(
id int ,
Name varchar(20) ,
age int ,
address varchar(20),
salary decimal(18.2)
);
insert into Employ(id,Name,age,address,salary)
values (1,"Rames",32,"Ahmedabad",20000.2),
(2,"kailan",25,"Delhi",18000.2),
(3,"Kawsik",23,"Kota",20000.2),
(4,"chaital",29,"Bhopal",1258522),
(5,"kamal",29,"Hydrabad",258632),
(6,"jamal",20,"Hydrabad",205000.2);

select *from Employ 
where age>25 and salary > 150;
select * from Employ 
where address = "bhopal" and (Name like '%R' or Name like '%H');

select * from Employ
where address not in ("Delhi","Kota")

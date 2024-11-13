create table studentResult(
studentId int primary key,
studentName varchar(20),
result  float not null

);

insert into studentResult(studentId,studentName,result)
values(1,"Razzak",3.56),
(2,"Raju",3.22),
(3,"Kamal",3.58),
(4,"Shovo",3.88),
(5,"kajol",3.22);


/*truncate table studentResult;*/

select min(result) as min_result
 from studentResult;
 
 select count(*) as student_result
 from studentResult
 where result =(select min(result) from studentResult);

select result as cgpa from studentResult
order by cgpa desc;

/*another way*/
create view studentResultView as
select studentId,studentName,result
from studentResult
order by result desc;

select * from studentResultView;

select * from studentResult 
where result>3.5;

alter table studentResult
add good_cgpa varchar(10);

set sql_safe_updates =0;

update studentResult
set good_cgpa ='yes'
where result > 3.5;

update studentResult
set good_cgpa ='NO'
where result <= 3.5;

SELECT count(*) as student_count
from studentResult
where result>3.5;

SELECT * from studentResult;

select studentName as good_cgpa_students,
(select count(*) from studentResult where result > 3.5) as total_student
from studentResult
where result > 3.5;



SELECT 
    'total_count' AS studentName, 
    COUNT(*) AS good_cgpa_students
FROM studentResult
WHERE result > 3.5

UNION ALL

SELECT 
    studentName, 
    '' AS good_cgpa_students
FROM studentResult
WHERE result > 3.5;


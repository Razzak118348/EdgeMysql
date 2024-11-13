create table booklist(
book_id int primary key,
book_name varchar(20),
bookTitle varchar(50),
page_number int 

);

insert into booklist(book_id,book_name,bookTitle,page_number)
value
(1, 'Intro to C++', 'Learning C++ Basics', 320),
(2, 'Advanced React', 'Mastering React Concepts', 150), 
(3, 'Database Systems', 'Understanding Databases', 520),
(4, 'Algorithms 101', 'Basics of Algorithms', 300),
(5, 'Web Development', 'Frontend with React', 400),
(6, 'Machine Learning', 'Intro to Machine Learning', 450),
(7, 'Python Programming', 'Intro to Python', 500);

select *from booklist ;

select count(*) as Total_books from booklist;

select avg(page_number) as Average_page from booklist;

SELECT book_id, page_number
FROM booklist
WHERE page_number > 100 AND page_number > (
    SELECT AVG(page_number) FROM booklist
);

insert into booklist(book_id,book_name,bookTitle,page_number)
value
(8,"hdjfh ","hjhduw jhdsdhuf",80);
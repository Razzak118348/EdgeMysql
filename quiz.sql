create database student;
use student;

-- Create the attendance table
CREATE TABLE attendance (
    serial_no INT PRIMARY KEY,
    course_code VARCHAR(10),
    course_title VARCHAR(50),
    class_time TIME
);

-- Insert data into attendance table
INSERT INTO attendance (serial_no, course_code, course_title, class_time) VALUES
(1, 'CSE101', 'Introduction to CSE', '09:00:00'),
(2, 'CSE102', 'Data Structures', '10:00:00'),
(3, 'CSE103', 'Algorithms', '11:00:00'),
(4, 'CSE104', 'Database Systems', '12:00:00'),
(5, 'CSE105', 'Operating Systems', '13:00:00'),
(6, 'CSE106', 'Computer Networks', '14:00:00'),
(7, 'CSE107', 'Software Engineering', '15:00:00'),
(8, 'CSE108', 'Web Development', '16:00:00'),
(9, 'CSE109', 'Machine Learning', '17:00:00'),
(10, 'CSE110', 'Artificial Intelligence', '18:00:00');

-- Create the faculty_member table
CREATE TABLE faculty_member (
    serial_no INT PRIMARY KEY,
    name VARCHAR(50),
    dept VARCHAR(50),
    room_number VARCHAR(10)
);

-- Insert data into faculty_member table
INSERT INTO faculty_member (serial_no, name, dept, room_number) VALUES
(5, 'Dr. Smith', 'CSE', '101'),
(6, 'Dr. Johnson', 'CSE', '102'),
(7, 'Dr. Brown', 'CSE', '103'),
(8, 'Dr. Taylor', 'CSE', '104'),
(9, 'Dr. Anderson', 'CSE', '105'),
(10, 'Dr. Thomas', 'CSE', '106'),
(11, 'Dr. Jackson', 'CSE', '107'),
(12, 'Dr. White', 'CSE', '108'),
(13, 'Dr. Harris', 'CSE', '109'),
(14, 'Dr. Martin', 'CSE', '110');

select * from attendance;

-- Display common values between the two tables based on serial_no
SELECT * 
FROM attendance 
left join faculty_member 
ON attendance.serial_no = faculty_member.serial_no;

-- Show distinct columns from both tables
SELECT serial_no, course_code, course_title, class_time, NULL AS name, NULL AS dept, NULL AS room_number
FROM attendance
UNION
SELECT serial_no, NULL AS course_code, NULL AS course_title, NULL AS class_time, name, dept, room_number
FROM faculty_member;



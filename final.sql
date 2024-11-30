-- question one -- 

CREATE TABLE employees (
    empId INT PRIMARY KEY,
    empName VARCHAR(100),
    empAge INT,
    empAddress VARCHAR(255),
    empSalary DECIMAL(10, 2)
);

INSERT INTO employees (empId, empName, empAge, empAddress, empSalary)
VALUES
(1, 'Daksh', 25, 'Jaipur', 32000),
(2, 'Ananya', 30, 'Bhopal', 37000),
(3, 'Aarush', 32, 'Jaipur', 35000),
(4, 'Reyansh', 30, 'Bhopal', 40000),
(5, 'Jhalak', 28, 'Jaipur', 39000);

select * from employees;

DELETE FROM employees WHERE empId = 1;

SELECT empName, empSalary FROM employees;

SELECT * FROM employees WHERE empSalary BETWEEN 35000 AND 40000;

-- INSERT INTO employees (empId, empName, empAge, empAddress, empSalary)
-- VALUES
-- (1, 'Daksh', 25, 'Jaipur', 32000);

--  question three -- 
 
CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    cust_name VARCHAR(100),
    city VARCHAR(100),
    grade INT,
    salesman_id INT
);
INSERT INTO customer (customer_id, cust_name, city, grade, salesman_id) 
VALUES
(3002, 'Nick Rimando', 'New York', 100, 5001),
(3007, 'Brad Davis', 'New York', 200, 5001),
(3005, 'Graham Zusi', 'California', 200, 5002),
(3008, 'Julian Green', 'London', 300, 5002);

CREATE TABLE orders (
    ord_no INT PRIMARY KEY,
    purch_amt DECIMAL(10, 2),
    ord_date DATE,
    customer_id INT,
    salesman_id INT,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);
INSERT INTO orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) 
VALUES
(70001, 150.5, '2012-10-05', 3005, 5002),
(70009, 270.65, '2012-09-10', 3002, 5005),
(70002, 65.26, '2012-10-05', 3007, 5001),
(70004, 110.5, '2012-08-17', 3008, 5003);

SELECT o.ord_no, o.purch_amt, c.cust_name, c.city
FROM orders o
JOIN customer c ON o.customer_id = c.customer_id
WHERE o.purch_amt BETWEEN 100 AND 200;
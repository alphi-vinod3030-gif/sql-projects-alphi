-- 1. Create tables
CREATE TABLE employees (
emp_id INT PRIMARY KEY,
emp_name VARCHAR(100),
department VARCHAR(50),
salary INT,
join_date DATE
);


CREATE TABLE attendance (
record_id INT PRIMARY KEY,
emp_id INT,
date DATE,
status VARCHAR(10),
FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);


INSERT INTO employees VALUES
(1, 'Alphi Vinod', 'IT', 4500, '2021-06-10'),
(2, 'Sameer Ali', 'Finance', 5000, '2020-09-12'),
GROUP BY department;

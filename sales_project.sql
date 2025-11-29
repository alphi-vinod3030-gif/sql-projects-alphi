CREATE TABLE customers (
customer_id INT PRIMARY KEY,
customer_name VARCHAR(100),
city VARCHAR(50),
join_date DATE
);


CREATE TABLE orders (
order_id INT PRIMARY KEY,
customer_id INT,
order_date DATE,
amount DECIMAL(10,2),
FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


-- 2. Insert sample data
INSERT INTO customers VALUES
(1, 'John Mathew', 'Dubai', '2022-01-10'),
(2, 'Aisha Khan', 'Sharjah', '2022-03-05'),
(3, 'Ravi Kumar', 'Abu Dhabi', '2022-02-15');


INSERT INTO orders VALUES
(1001, 1, '2022-04-10', 250.50),
(1002, 1, '2022-04-12', 120.00),
(1003, 2, '2022-04-15', 560.40),
(1004, 3, '2022-04-20', 330.00);



-- A. Total amount spent by each customer
SELECT c.customer_name, SUM(o.amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name;


-- B. Orders above 300 AED
SELECT * FROM orders WHERE amount > 300;


-- C. Monthly sales report
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, SUM(amount) AS total_sales
FROM orders
GROUP BY DATE_FORMAT(order_date, '%Y-%m');

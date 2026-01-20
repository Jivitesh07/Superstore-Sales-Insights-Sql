CREATE DATABASE superstore_db;
USE superstore_db;

CREATE TABLE superstore (
    order_id VARCHAR(20),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(50),
    customer_id VARCHAR(20),
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    country VARCHAR(50),
    region VARCHAR(50),
    state VARCHAR(50),
    city VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name VARCHAR(200),
    sales DECIMAL(10,2),
    quantity INT,
    discount DECIMAL(4,2),
    profit DECIMAL(10,2)
);
INSERT INTO superstore VALUES
('CA-2016-1001','2016-01-05','2016-01-10','Second Class','CU-001','Andrew Allen','Consumer','USA','West','California','Los Angeles','Technology','Phones','iPhone 11',900.50,2,0.10,200.25),
('CA-2016-1002','2016-02-12','2016-02-15','Standard Class','CU-002','Brian Smith','Corporate','USA','East','New York','New York','Furniture','Chairs','Office Chair',250.00,4,0.00,45.00),
('CA-2016-1003','2016-03-20','2016-03-25','First Class','CU-003','Charles Brown','Home Office','USA','South','Texas','Houston','Office Supplies','Binders','Plastic Binder',35.75,3,0.20,-5.50),
('CA-2016-1004','2016-04-02','2016-04-08','Second Class','CU-004','David Wilson','Consumer','USA','Central','Illinois','Chicago','Technology','Accessories','Wireless Mouse',45.00,5,0.00,12.00),
('CA-2016-1005','2016-05-10','2016-05-15','Standard Class','CU-005','Emma Johnson','Corporate','USA','West','Washington','Seattle','Furniture','Tables','Wooden Table',500.00,1,0.15,-20.00),
('CA-2016-1006','2016-06-18','2016-06-22','First Class','CU-006','Frank Miller','Consumer','USA','East','Pennsylvania','Philadelphia','Office Supplies','Paper','A4 Paper Pack',25.00,10,0.00,8.50),
('CA-2016-1007','2016-07-01','2016-07-06','Second Class','CU-007','Grace Lee','Home Office','USA','South','Florida','Miami','Technology','Phones','Samsung Galaxy',850.00,1,0.05,180.00),
('CA-2016-1008','2016-08-14','2016-08-18','Standard Class','CU-008','Henry Adams','Corporate','USA','Central','Ohio','Columbus','Office Supplies','Storage','File Box',60.00,6,0.10,9.00),
('CA-2016-1009','2016-09-30','2016-10-05','First Class','CU-009','Irene Clark','Consumer','USA','West','Oregon','Portland','Furniture','Bookcases','Wood Bookcase',320.00,2,0.20,-15.00),
('CA-2016-1010','2016-11-22','2016-11-27','Standard Class','CU-010','Jack Turner','Corporate','USA','East','Massachusetts','Boston','Technology','Laptops','HP Laptop',1200.00,1,0.10,300.00);

SELECT * FROM superstore LIMIT 10;
SELECT COUNT(*) AS total_records FROM superstore;

SELECT order_id, product_name, sales
FROM superstore
WHERE category = 'Technology'
ORDER BY sales DESC;

SELECT product_name, sales
FROM superstore
ORDER BY sales DESC
LIMIT 10;
SELECT 

    category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM superstore
GROUP BY category;

SELECT 
    category,
    SUM(sales) AS total_sales
FROM superstore
GROUP BY category
HAVING SUM(sales) > 100000;

SELECT 
    region,
    AVG(profit) AS avg_profit
FROM superstore
GROUP BY region
HAVING AVG(profit) > 50;

SELECT *
FROM superstore
WHERE order_date BETWEEN '2016-01-01' AND '2016-12-31';

SELECT customer_name, sales
FROM superstore
WHERE customer_name LIKE 'A%';

SELECT product_name, sales
FROM superstore
WHERE product_name LIKE '%Chair%';
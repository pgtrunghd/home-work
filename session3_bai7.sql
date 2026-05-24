CREATE SCHEMA sales;

CREATE TABLE sales.Customers (
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100) UNIQUE NOT NULL,
	phone VARCHAR(20)
);

CREATE TABLE sales.Products (
	product_id SERIAL PRIMARY KEY,
	product_name VARCHAR(100) NOT NULL,
	price NUMERIC(10, 2) NOT NULL,
	stock_quantity INT NOT NULL
);

CREATE TABLE sales.Orders (
	order_id SERIAL PRIMARY KEY,
	customer_id INT,
	order_date DATE DEFAULT CURRENT_DATE NOT NULL
);

CREATE TABLE sales.OrderDetails (
	order_detail_id SERIAL PRIMARY KEY,
	order_id INT,
	product_id INT,
	quantity INT NOT NULL
);

ALTER TABLE sales.OrderDetails
ADD CONSTRAINT check_order_quantity CHECK (quantity >= 1);

ALTER TABLE sales.Orders
ADD CONSTRAINT foreign_key_orders_customers FOREIGN KEY (customer_id) REFERENCES sales.Customers (customer_id);

ALTER TABLE sales.OrderDetails
ADD CONSTRAINT foreign_key_orderdetails_orders FOREIGN KEY (order_id) REFERENCES sales.Orders (order_id);

ALTER TABLE sales.OrderDetails
ADD CONSTRAINT foreign_key_orderdetails_products FOREIGN KEY (product_id) REFERENCES sales.Products (product_id);
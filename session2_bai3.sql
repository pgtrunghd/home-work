CREATE DATABASE SalesDB;

CREATE SCHEMA sales;

CREATE TABLE sales.Customers(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100) UNIQUE NOT NULL,
	phone VARCHAR(20)
);

CREATE TABLE sales.Products(
	product_id SERIAL PRIMARY KEY,
	product_name VARCHAR(100) NOT NULL,
	price NUMERIC(10,2) NOT NULL,
	stock_quantity INT NOT NULL
);

CREATE TABLE sales.Orders(
	order_id SERIAL PRIMARY KEY,
	customer_id INT REFERENCES sales.Customers(customer_id),
	order_date DATE DEFAULT CURRENT_DATE NOT NULL
);

CREATE TABLE sales.OrderItems(
	order_item_id SERIAL PRIMARY KEY,
	order_id INT REFERENCES sales.Orders(order_id),
	product_id INT REFERENCES sales.Products(product_id),
	quantity INT NOT NULL
);

ALTER TABLE sales.OrderItems
ADD CONSTRAINT check_order_quantity
CHECK (quantity >= 1);
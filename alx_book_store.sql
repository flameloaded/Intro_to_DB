CREATE DATABASE alx_book_store;
USE alx_book_store;
CREATE TABLE book(
book_id INT PRIMARY KEY,
title VARCHAR(130),
author_id INT REFERENCES author(author_id),
price DOUBLE,
publication_date DATE
);

CREATE TABLE author(
author_id INT PRIMARY KEY,
author_name VARCHAR(215)
);

CREATE TABLE customer(
customer_id INT PRIMARY KEY,
customer_name VARCHAR(215),
email VARCHAR(215),
address TEXT
);

CREATE TABLE orders(
order_id INT PRIMARY KEY,
customer_id INT REFERENCES customer(customer_id),
order_date DATE 
);

CREATE TABLE order_details(
orderdetailid INT PRIMARY KEY,
order_id INT REFERENCES orders(order_id),
book_id INT REFERENCES book(book_id),
quantity DOUBLE
)
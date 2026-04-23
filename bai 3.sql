CREATE DATABASE ss2_bt3;
USE ss2_bt3;
CREATE TABLE CUSTOMER(
customer_id INT,
full_name VARCHAR(100) NOT NULL
);

CREATE TABLE ORDERS(
orders_id INT PRIMARY KEY auto_increment,
orders_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
total_amount DECIMAL(10,2) NOT NULL CHECK ( total_amount >=0 ),
customer_id INT NOT NULL

);
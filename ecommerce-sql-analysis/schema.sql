-- =============================================
-- Ecommerce Sales Analysis — Database Schema
-- =============================================

USE ecommerce_project;

-- =============================================
-- 1️⃣ Raw Data Table (Landing Layer)
-- =============================================

-- This table stores the cleaned raw data imported from Excel/CSV
CREATE TABLE orders_raw (
    order_id VARCHAR(20),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(50),
    customer_id VARCHAR(20),
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    region VARCHAR(50),
    state VARCHAR(50),
    city VARCHAR(50),
    postal_code VARCHAR(20),
    country VARCHAR(50),
    product_id VARCHAR(20),
    product_name VARCHAR(150),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    sales DECIMAL(10,2),
    profit DECIMAL(10,2),
    quantity INT,
    discount DECIMAL(5,2)
);

-- =============================================
-- 2️⃣ Dimension Tables
-- =============================================

CREATE TABLE customers (
    customer_id VARCHAR(20) PRIMARY KEY,
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    region VARCHAR(50),
    state VARCHAR(50),
    city VARCHAR(50),
    postal_code VARCHAR(20),
    country VARCHAR(50)
);

CREATE TABLE products (
    product_id VARCHAR(20) PRIMARY KEY,
    product_name VARCHAR(150),
    category VARCHAR(50),
    sub_category VARCHAR(50)
);

-- =============================================
-- 3️⃣ Fact Table
-- =============================================

CREATE TABLE orders (
    order_id VARCHAR(20),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(50),
    sales DECIMAL(10,2),
    profit DECIMAL(10,2),
    quantity INT,
    discount DECIMAL(5,2),
    customer_id VARCHAR(20),
    product_id VARCHAR(20),

    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- =============================================
-- 4️⃣ Insert Data into Dimension Tables
-- =============================================

INSERT INTO customers (customer_id, customer_name, segment, region, state, city, postal_code, country)
SELECT DISTINCT
    customer_id, customer_name, segment, region, state, city, postal_code, country
FROM orders_raw;

INSERT INTO products (product_id, product_name, category, sub_category)
SELECT DISTINCT
    product_id, product_name, category, sub_category
FROM orders_raw;

-- =============================================
-- 5️⃣ Insert Data into Fact Table
-- =============================================

INSERT INTO orders (
    order_id, order_date, ship_date, ship_mode,
    sales, profit, quantity, discount,
    customer_id, product_id
)
SELECT
    order_id, order_date, ship_date, ship_mode,
    sales, profit, quantity, discount,
    customer_id, product_id
FROM orders_raw;

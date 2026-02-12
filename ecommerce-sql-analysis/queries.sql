-- =====================================================
-- Ecommerce Sales Analysis — SQL Business Queries
-- =====================================================

-- ==========================
-- SECTION 1: Executive KPIs
-- ==========================

-- 1. Total sales, total profit, and total number of orders
SELECT 
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders;


-- 2. Average Order Value (AOV)
SELECT 
    SUM(sales) / COUNT(DISTINCT order_id) AS avg_order_value
FROM orders;


-- 3. Monthly sales and profit trends
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS year_month,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM orders
GROUP BY year_month
ORDER BY year_month;


-- 4. Profit margin by year
SELECT 
    YEAR(order_date) AS order_year,
    SUM(profit) / SUM(sales) * 100 AS profit_margin_pct
FROM orders
GROUP BY order_year
ORDER BY order_year;


-- 5. Revenue contribution of top 10 customers
SELECT 
    SUM(customer_sales) / (SELECT SUM(sales) FROM orders) * 100 AS top10_revenue_pct
FROM (
    SELECT 
        customer_id,
        SUM(sales) AS customer_sales
    FROM orders
    GROUP BY customer_id
    ORDER BY customer_sales DESC
    LIMIT 10
) t;


-- ==========================
-- SECTION 2: Customer Analytics
-- ==========================

-- 6. Top 10 customers by total revenue
SELECT 
    c.customer_name,
    SUM(o.sales) AS total_sales
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY total_sales DESC
LIMIT 10;


-- 7. Revenue and profit by customer segment
SELECT 
    c.segment,
    SUM(o.sales) AS total_sales,
    SUM(o.profit) AS total_profit
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.segment
ORDER BY total_sales DESC;


-- 8. Average order value by customer segment
SELECT 
    c.segment,
    SUM(o.sales) / COUNT(DISTINCT o.order_id) AS avg_order_value
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.segment
ORDER BY avg_order_value DESC;


-- 9. Customers with the highest order frequency
SELECT 
    c.customer_name,
    COUNT(o.order_id) AS order_count
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY order_count DESC
LIMIT 10;


-- 10. Profitability by region
SELECT 
    c.region,
    SUM(o.sales) AS total_sales,
    SUM(o.profit) AS total_profit
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.region
ORDER BY total_profit DESC;


-- ==========================
-- SECTION 3: Product & Category Performance
-- ==========================

-- 11. Revenue and profit by product category
SELECT 
    p.category,
    SUM(o.sales) AS total_sales,
    SUM(o.profit) AS total_profit
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY total_sales DESC;


-- 12. Sub-categories with high sales but low profit margins
SELECT 
    p.sub_category,
    SUM(o.sales) AS total_sales,
    SUM(o.profit) / SUM(o.sales) * 100 AS profit_margin_pct
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.sub_category
ORDER BY profit_margin_pct ASC;


-- 13. Most frequently ordered products
SELECT 
    p.product_name,
    COUNT(o.order_id) AS order_count
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY order_count DESC
LIMIT 10;


-- 14. Average discount by category
SELECT 
    p.category,
    AVG(o.discount) AS avg_discount
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY avg_discount DESC;


-- 15. Products with lowest profit despite high sales
SELECT 
    p.product_name,
    SUM(o.sales) AS total_sales,
    SUM(o.profit) AS total_profit
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_profit ASC
LIMIT 10;

# Ecommerce Sales Analysis — SQL

## Project Overview
This project analyzes ecommerce sales data using SQL to generate business insights related to revenue, profitability, customer behavior, and product performance. The analysis is designed to support scalable dashboarding in Power BI or Tableau and demonstrate real-world relational database analytics workflows.

---

## Database Design
The dataset was normalized into a star-schema structure for reliability, performance, and analytical flexibility.

---

## Data Ingestion & Normalization Process

The original dataset was provided in Excel format and imported into MySQL using command-line utilities for efficient bulk loading instead of manual insertion.

### Step 1: Raw Data Staging
All records were first loaded into a staging table called `orders_raw`.  
This staging layer preserves the original dataset structure and acts as a landing zone before transformation.

### Step 2: Data Normalization
The raw dataset contained repeated customer and product information across rows.  
To eliminate redundancy and ensure relational integrity, the data was normalized into:

- `customers` (dimension table)
- `products` (dimension table)
- `orders` (fact table)

### Why Normalization?
- Reduces data redundancy
- Improves query performance
- Ensures referential integrity through foreign keys
- Enables scalable analytics and BI integration
- Follows star-schema design best practices used in data warehousing

This structured approach mirrors real-world ETL workflows used in production data environments.

---

## Data Model

### Fact Table
- orders(order_id, order_date, ship_date, ship_mode, sales, profit, quantity, discount, customer_id, product_id)

### Dimension Tables
- customers(customer_id, customer_name, segment, region, state, city, postal_code, country)
- products(product_id, product_name, category, sub_category)

Primary and foreign keys were applied to ensure referential integrity and enable accurate joins across entities.

---

## Tools Used
- MySQL
- SQL Joins (INNER, LEFT)
- Aggregations (GROUP BY, HAVING)
- Date Functions
- Business KPI Analysis

---

## Analysis Areas
- Sales and profit trends over time
- Customer purchasing behavior and revenue contribution
- Product and category-level performance
- Regional and segment-based analysis
- Average order value and order volume
- Top and bottom performing customers and products

---

## Why SQL Instead of Excel?

While Excel is excellent for small datasets and quick exploratory analysis, SQL was chosen for this project due to its scalability and analytical structure:

- SQL efficiently handles large datasets beyond Excel’s row limits.
- Queries are reusable, automated, and easy to maintain.
- Relational databases enable structured joins across multiple tables.
- SQL enforces data integrity using primary and foreign keys.
- SQL integrates directly with BI tools like Power BI and Tableau.

Excel was used initially for data exploration, while SQL was used for scalable, structured business analysis.

---

## Visualization Layer
Power BI and Tableau dashboards are currently in progress using this SQL data model.

---

## Next Enhancements
- Build interactive Power BI dashboards using this SQL backend
- Add advanced analytics using subqueries and window functions
- Create SQL views for reusable reporting layers
- Implement stored procedures for automation and scalability
- Add indexing strategy for performance optimization

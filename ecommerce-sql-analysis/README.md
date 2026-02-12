# Ecommerce Sales Analysis — SQL

## Project Overview
This project analyzes ecommerce sales data using SQL to generate business insights related to revenue, profitability, customer behavior, and product performance. The analysis is designed to support scalable dashboarding in Power BI or Tableau and demonstrate real-world relational database analytics workflows.

---

## Database Design
The dataset was normalized into a star-schema structure for reliability, performance, and analytical flexibility.

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

## Key Business Insights (Sample)
- A small group of customers contributes disproportionately to total revenue.
- Technology category generates higher profit margins compared to Furniture.
- Sales exhibit seasonal spikes during specific months.
- Certain regions underperform despite high order volumes, indicating pricing or discount strategy issues.

---

## Next Enhancements
- Build interactive Power BI dashboards using this SQL backend
- Add advanced analytics using subqueries and window functions
- Create SQL views for reusable reporting layers
- Implement stored procedures for automation and scalability
- Add indexing strategy for performance optimization


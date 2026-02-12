# Ecommerce Sales Analysis — Business Insights

This document summarizes key business insights derived from SQL analysis of the normalized ecommerce database.

------------------------------------------------------------
1. Executive KPIs
------------------------------------------------------------

Total Revenue: $2,296,939.11  
Total Profit: $286,355.88  
Total Orders: 5,009  
Average Order Value (AOV): $458.56  

Insight:
The business generated approximately $2.3M in revenue with an overall profit margin of ~12.5%. The AOV of $458 indicates relatively high-value transactions per order.

------------------------------------------------------------
2. Monthly Sales & Profit Trends
------------------------------------------------------------

Insight:
Monthly aggregation allows tracking seasonality and identifying peak revenue months. This enables better inventory planning, promotional timing, and forecasting.

------------------------------------------------------------
3. Profit Margin by Year
------------------------------------------------------------

2018 → 10.23%  
2019 → 13.10%  
2020 → 13.43%  
2021 → 12.74%  

Insight:
Profit margins improved significantly after 2018, peaking in 2020. Slight margin decline in 2021 may indicate higher discounting or cost pressures. Overall profitability trend is positive.

------------------------------------------------------------
4. Revenue Contribution of Top 10 Customers
------------------------------------------------------------

Insight:
Revenue is partially concentrated among top customers. This indicates both opportunity (strong key accounts) and risk (customer concentration dependency). Retention strategies are critical.

------------------------------------------------------------
5. Top 10 Customers by Revenue
------------------------------------------------------------

Sean Miller – $25,043  
Tamara Chand – $19,052  
Raymond Buch – $15,117  
Tom Ashbrook – $14,595  
Adrian Barton – $14,473  
Ken Lonsdale – $14,175  
Sanjit Chand – $14,142  
Hunter Lopez – $12,873  
Sanjit Engle – $12,209  
Christopher Conant – $12,129  

Insight:
A small group of high-value customers drives significant revenue. These customers should be prioritized for loyalty programs and personalized engagement.

------------------------------------------------------------
6. Revenue & Profit by Customer Segment
------------------------------------------------------------

Consumer → $1.16M Sales | $134K Profit  
Corporate → $706K Sales | $92K Profit  
Home Office → $430K Sales | $60K Profit  

Insight:
The Consumer segment drives the majority of revenue. All segments are profitable, showing balanced diversification.

------------------------------------------------------------
7. Average Order Value by Segment
------------------------------------------------------------

Home Office → $472.67  
Corporate → $466.41  
Consumer → $449.01  

Insight:
Home Office customers place fewer but higher-value orders. Marketing strategies could focus on increasing frequency within this segment.

------------------------------------------------------------
8. Customers with Highest Order Frequency
------------------------------------------------------------

William Brown – 37 orders  
Matt Abelman – 34  
John Lee – 34  
Paul Prost – 34  
Chloris Kastensmidt – 32  

Insight:
Certain customers demonstrate strong repeat purchasing behavior. These customers represent stable recurring revenue and should be targeted with retention incentives.

------------------------------------------------------------
9. Profitability by Region
------------------------------------------------------------

West → $2.10M Sales | $269K Profit  
South → $138K Sales | $9,966 Profit  
East → $52K Sales | $6,974 Profit  
Central → $1,513 Sales | -$101 Profit  

Insight:
The West region overwhelmingly dominates revenue and profitability. The Central region is unprofitable and requires operational review.

------------------------------------------------------------
10. Revenue & Profit by Product Category
------------------------------------------------------------

Technology → $836K Sales | $145K Profit  
Furniture → $742K Sales | $18K Profit  
Office Supplies → $719K Sales | $122K Profit  

Insight:
Technology is the most profitable category. Furniture generates strong revenue but weak margins, indicating pricing or discount issues.

------------------------------------------------------------
11. Sub-Category Profit Margins
------------------------------------------------------------

Loss-Making:
Tables (-8.56%)  
Bookcases (-3.07%)  
Supplies (-2.55%)

High Margin:
Labels (44.42%)  
Paper (43.39%)  
Envelopes (42.27%)

Insight:
Some furniture-related sub-categories are destroying margins, while office consumables deliver strong profitability.

------------------------------------------------------------
12. Most Frequently Ordered Products
------------------------------------------------------------

Staple Envelope – 48 orders  
Staples – 46  
Easy-Staple Paper – 46  

Insight:
Office consumables dominate purchase frequency, indicating steady recurring demand patterns.

------------------------------------------------------------
13. Average Discount by Category
------------------------------------------------------------

Furniture → 17.4%  
Office Supplies → 15.7%  
Technology → 13.2%  

Insight:
Furniture receives the highest average discount yet remains the least profitable category. Discounting strategy may be eroding margins.

------------------------------------------------------------
14. High Sales but Loss-Making Products
------------------------------------------------------------

Cubify CubeX 3D Printer Double Head Print → -$8,879  
Lexmark MX611dhe Printer → -$4,589  
Cubify CubeX 3D Printer Triple Head Print → -$3,839  

Insight:
Certain premium electronics generate significant revenue but substantial losses. Pricing and procurement costs should be reassessed.

------------------------------------------------------------

Conclusion:

This SQL-based analysis demonstrates how structured relational modeling and aggregation queries can uncover revenue drivers, profitability risks, regional imbalance, customer concentration, and pricing inefficiencies — enabling data-driven strategic decision-making.


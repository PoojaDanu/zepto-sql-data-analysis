
# Zepto Product Data Analysis (PostgreSQL)

## 📌 Project Overview
This project analyzes product-level data from an online grocery platform
(Zepto-style dataset) to understand pricing, discounts, stock availability,
and inventory distribution using PostgreSQL.

The goal is to demonstrate *SQL data analysis skills*, including data
cleaning, exploration, and business-focused analysis.


## Tools 
● PostgreSQL
● pgAdmin
● SQL (CTEs, Aggregations, CASE, GROUP BY)



## Structure
zepto-sql-data-analysis/
├── README.md
├── zepto_schema.sql
├── zepto_data_exploration.sql
├── zepto_data_cleaning.sql
└── zepto_analysis.sql


## Data Exploration
● Total number of products
● Identification of missing (NULL) values
● Unique product categories
● In-stock vs out-of-stock product count
● Detection of duplicate product names (multiple SKUs)

## Data Cleaning
● Removed products with invalid pricing (MRP = 0)
● Converted prices from paise to rupees
● Ensured consistent numeric formats for analysis

## Key Analysis Performed
● Top 10 best-value products based on discount percentage
● High-MRP products that are currently out of stock
● Estimated revenue per product category
● Products with high price but low discount
● Price-per-gram analysis to identify best value products


## Key Insights
● Certain categories contribute disproportionately to total revenue
● Bulk products generally offer lower price per gram
● High-MRP items are more likely to be out of stock
● Discounts vary significantly across categories




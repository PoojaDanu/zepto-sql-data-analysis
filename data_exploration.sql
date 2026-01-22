-- Total number of records
SELECT COUNT(*) AS total_products
FROM zepto;

-- Preview sample data
SELECT *
FROM zepto
LIMIT 10;

-- Check for NULL values in important columns
SELECT *
FROM zepto
WHERE category IS NULL
   OR name IS NULL
   OR mrp IS NULL
   OR discounted_price IS NULL
   OR weight_in_gms IS NULL
   OR available_quantity IS NULL;

-- List of unique product categories
SELECT DISTINCT category
FROM zepto
ORDER BY category;

-- In-stock vs out-of-stock products
SELECT out_of_stock, COUNT(*) AS product_count
FROM zepto
GROUP BY out_of_stock;

-- Products appearing multiple times
SELECT name, COUNT(*) AS sku_count
FROM zepto
GROUP BY name
HAVING COUNT(*) > 1
ORDER BY sku_count DESC;

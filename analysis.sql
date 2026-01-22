-- Top 10 best-value products based on discount percentage
SELECT name, mrp, discount_percent
FROM zepto
ORDER BY discount_percent DESC
LIMIT 10;

-- High-value products that are currently out of stock
SELECT name, mrp
FROM zepto
WHERE out_of_stock = TRUE
  AND mrp > 300
ORDER BY mrp DESC;

-- Estimated revenue per product category
SELECT category,
       SUM(discounted_price * available_quantity) AS estimated_revenue
FROM zepto
GROUP BY category
ORDER BY estimated_revenue DESC;

-- Products with high price but low discount
SELECT name, mrp, discount_percent
FROM zepto
WHERE mrp > 500
  AND discount_percent < 10
ORDER BY mrp DESC;

-- Classify products by package size
SELECT name,
       weight_in_gms,
       CASE
           WHEN weight_in_gms < 1000 THEN 'Low'
           WHEN weight_in_gms < 5000 THEN 'Medium'
           ELSE 'Bulk'
       END AS weight_category
FROM zepto;


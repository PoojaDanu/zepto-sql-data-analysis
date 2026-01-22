-- Identify products with 0 pricing
SELECT *
FROM zepto
WHERE mrp <= 0 OR discounted_price <= 0;

-- Remove records where MRP is  00 or negative
DELETE FROM zepto
WHERE mrp <= 0;

-- Convert prices from paise to rupees
UPDATE zepto
SET mrp = mrp / 100,
    discounted_price = discounted_price / 100;

-- Verify conversion
SELECT mrp, discounted_price
FROM zepto
LIMIT 10;

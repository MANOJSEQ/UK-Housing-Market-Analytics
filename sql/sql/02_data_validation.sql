-- Check total number of imported records
SELECT COUNT(*) AS total_records
FROM property_sales;

-- Preview first 10 records
SELECT * FROM property_sales
LIMIT 10;

-- Check missing postcodes
SELECT COUNT(*) AS missing_postcodes
FROM property_sales
WHERE postcode IS NULL;

-- Check minimum and maximum property price
SELECT 
    MIN(price) AS minimum_price,
    MAX(price) AS maximum_price,
    AVG(price) AS average_price
FROM property_sales;

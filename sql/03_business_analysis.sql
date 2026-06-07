-- Property Type Distribution
SELECT property_type, COUNT(*) AS transactions
FROM property_sales
GROUP BY property_type
ORDER BY transactions DESC;

-- New Build vs Existing Property
SELECT old_new, COUNT(*) AS transactions
FROM property_sales
GROUP BY old_new;

-- Freehold vs Leasehold
SELECT duration, COUNT(*) AS transactions
FROM property_sales
GROUP BY duration;

-- Average Price by Property Type
SELECT property_type, ROUND(AVG(price), 0) AS average_price, COUNT(*) AS transactions
FROM property_sales
GROUP BY property_type
ORDER BY average_price DESC;

-- Average Price by County
SELECT county, ROUND(AVG(price), 0) AS average_price, COUNT(*) AS transactions
FROM property_sales
GROUP BY county
HAVING COUNT(*) > 100
ORDER BY average_price DESC
LIMIT 15;

-- Top 15 Most Expensive Towns
SELECT town_city, ROUND(AVG(price), 0) AS average_price, COUNT(*) AS transactions
FROM property_sales
GROUP BY town_city
HAVING COUNT(*) > 50
ORDER BY average_price DESC
LIMIT 15;

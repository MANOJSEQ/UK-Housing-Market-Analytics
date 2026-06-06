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

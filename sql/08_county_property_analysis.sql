SELECT
    county,
    CASE
        WHEN property_type = 'D' THEN 'Detached'
        WHEN property_type = 'S' THEN 'Semi Detached'
        WHEN property_type = 'T' THEN 'Terraced'
        WHEN property_type = 'F' THEN 'Flat'
    END AS property_type,
    ROUND(AVG(price),0) AS average_price,
    COUNT(*) AS transactions
FROM residential_sales
GROUP BY county, property_type
HAVING COUNT(*) > 50
ORDER BY average_price DESC;

-- Investment Opportunity View
SELECT
    county,
    ROUND(AVG(price),0) AS average_price,
    COUNT(*) AS transactions
FROM residential_sales
GROUP BY county
HAVING COUNT(*) > 1000
ORDER BY transactions DESC
LIMIT 20;

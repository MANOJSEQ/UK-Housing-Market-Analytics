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

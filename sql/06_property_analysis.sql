-- Average Price by Property Type
SELECT
    CASE
        WHEN property_type = 'D' THEN 'Detached'
        WHEN property_type = 'S' THEN 'Semi Detached'
        WHEN property_type = 'T' THEN 'Terraced'
        WHEN property_type = 'F' THEN 'Flat'
    END AS property_type,
    ROUND(AVG(price),0) AS average_price,
    COUNT(*) AS transactions
FROM residential_sales
GROUP BY property_type
ORDER BY average_price DESC;

-- Property Type Share
SELECT
    CASE
        WHEN property_type = 'D' THEN 'Detached'
        WHEN property_type = 'S' THEN 'Semi Detached'
        WHEN property_type = 'T' THEN 'Terraced'
        WHEN property_type = 'F' THEN 'Flat'
    END AS property_type,
    COUNT(*) AS transactions,
    ROUND(COUNT(*) * 100.0 /
          (SELECT COUNT(*) FROM residential_sales),2) AS percentage_share
FROM residential_sales
GROUP BY property_type
ORDER BY transactions DESC;

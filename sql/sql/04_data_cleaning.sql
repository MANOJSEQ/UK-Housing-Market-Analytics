CREATE VIEW residential_sales AS
SELECT *
FROM property_sales
WHERE
    property_type IN ('D', 'S', 'T', 'F')
    AND price BETWEEN 10000 AND 5000000;

SELECT COUNT(*) AS residential_transactions
FROM residential_sales;

SELECT MIN(price), MAX(price), ROUND(AVG(price),0)
FROM residential_sales;

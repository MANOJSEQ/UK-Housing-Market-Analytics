-- Top 15 Counties by Average House Price
SELECT county, ROUND(AVG(price), 0) AS average_price, COUNT(*) AS transactions
FROM residential_sales
GROUP BY county
HAVING COUNT(*) > 100
ORDER BY average_price DESC
LIMIT 15;

-- Bottom 15 Counties by Average House Price
SELECT county, ROUND(AVG(price),0) AS average_price, COUNT(*) AS transactions
FROM residential_sales
GROUP BY county
HAVING COUNT(*) > 100
ORDER BY average_price ASC
LIMIT 15;

-- Top 15 Towns by Average House Price
SELECT town_city, ROUND(AVG(price),0) AS average_price, COUNT(*) AS transactions
FROM residential_sales
GROUP BY town_city
HAVING COUNT(*) > 50
ORDER BY average_price DESC
LIMIT 15;

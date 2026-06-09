-- Monthly Housing Market Trends
SELECT
    DATE_TRUNC('month', date_of_transfer) AS month,
    ROUND(AVG(price),0) AS average_price,
    COUNT(*) AS transactions
FROM residential_sales
GROUP BY month
ORDER BY month;

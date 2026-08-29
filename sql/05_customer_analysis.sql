-- 1. Count unique customers
/*
SELECT
    COUNT(DISTINCT CustomerID) AS unique_customers
FROM ecommerce_orders;
*/

-- 2. Number of orders per customer
/*
SELECT
    CustomerID,
    COUNT(*) AS total_orders
FROM ecommerce_orders
GROUP BY CustomerID
ORDER BY total_orders DESC;
*/

-- 3. Find repeat customers
/*
SELECT
    CustomerID,
    COUNT(*) AS total_orders
FROM ecommerce_orders
GROUP BY CustomerID
HAVING COUNT(*) > 1
ORDER BY total_orders DESC;
*/

-- 4. Customer spending
/*
SELECT
    CustomerID,
    SUM(TotalPrice) AS total_spent
FROM ecommerce_orders
GROUP BY CustomerID
ORDER BY total_spent DESC;
*/

-- 5. Top 10 highest-spending customers
/*
SELECT
    CustomerID,
    COUNT(*) AS total_orders,
    SUM(TotalPrice) AS total_spent
FROM ecommerce_orders
GROUP BY CustomerID
ORDER BY total_spent DESC
LIMIT 10;
*/

-- 6. Average spending per customer

SELECT
    CustomerID,
    AVG(TotalPrice) AS average_order_value
FROM ecommerce_orders
GROUP BY CustomerID
ORDER BY average_order_value DESC;
-- 1. Total number of orders
/*
SELECT COUNT(*) AS total_orders
FROM ecommerce_orders;
*/

-- 2. Total revenue
/*
SELECT
    SUM(TotalPrice) AS total_revenue
FROM ecommerce_orders;
*/

-- 3. Average order value
/*
SELECT
    AVG(TotalPrice) AS average_order_value
FROM ecommerce_orders;
*/

-- 4. Total units sold
/*
SELECT
    SUM(Quantity) AS total_units_sold
FROM ecommerce_orders;
*/

-- 5. Highest-value orders
/*
SELECT
    OrderID,
    Product,
    Quantity,
    TotalPrice
FROM ecommerce_orders
ORDER BY TotalPrice DESC;
*/

-- 6. Top 10 highest-value orders
/*
SELECT
    OrderID,
    Product,
    Quantity,
    TotalPrice
FROM ecommerce_orders
ORDER BY TotalPrice DESC
LIMIT 10;
*/

-- 7. Lowest-value orders
/*
SELECT
    OrderID,
    Product,
    Quantity,
    TotalPrice
FROM ecommerce_orders
ORDER BY TotalPrice ASC;
*/

-- 8. Overall sales summary

SELECT
    COUNT(*) AS total_orders,
    COUNT(DISTINCT CustomerID) AS unique_customers,
    SUM(Quantity) AS total_units_sold,
    SUM(TotalPrice) AS total_revenue,
    AVG(TotalPrice) AS average_order_value
FROM ecommerce_orders;
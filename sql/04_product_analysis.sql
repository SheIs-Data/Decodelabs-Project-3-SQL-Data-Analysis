-- 1. Number of orders by product
/*
SELECT
    Product,
    COUNT(*) AS total_orders
FROM ecommerce_orders
GROUP BY Product
ORDER BY total_orders DESC;
*/

-- 2. Total revenue by product
/*
SELECT
    Product,
    SUM(TotalPrice) AS total_revenue
FROM ecommerce_orders
GROUP BY Product
ORDER BY total_revenue DESC;
*/

-- 3. Total units sold by product
/*
SELECT
    Product,
    SUM(Quantity) AS total_units_sold
FROM ecommerce_orders
GROUP BY Product
ORDER BY total_units_sold DESC;
*/

-- 4. Average order value by product
/*
SELECT
    Product,
    AVG(TotalPrice) AS average_order_value
FROM ecommerce_orders
GROUP BY Product
ORDER BY average_order_value DESC;
*/

-- 5. Average quantity purchased per product
/*
SELECT
    Product,
    AVG(Quantity) AS average_quantity_per_order
FROM ecommerce_orders
GROUP BY Product
ORDER BY average_quantity_per_order DESC;
*/

-- 6. Comprehensive product analysis
/*
SELECT
    Product,
    COUNT(*) AS total_orders,
    SUM(Quantity) AS units_sold,
    SUM(TotalPrice) AS total_revenue,
    AVG(TotalPrice) AS average_order_value
FROM ecommerce_orders
GROUP BY Product
ORDER BY total_revenue DESC;
*/

-- 7. Revenue contribution by product

SELECT
    Product,
    SUM(TotalPrice) AS product_revenue,
    ROUND(
        SUM(TotalPrice) /
        (SELECT SUM(TotalPrice)
         FROM ecommerce_orders) * 100,
        2
    ) AS revenue_percentage
FROM ecommerce_orders
GROUP BY Product
ORDER BY product_revenue DESC;

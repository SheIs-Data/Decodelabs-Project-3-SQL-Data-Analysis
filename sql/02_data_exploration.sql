-- 1. Count total records
-- SELECT COUNT(*) AS total_orders
-- FROM ecommerce_orders;

-- 2. View the dataset
-- SELECT *
-- FROM ecommerce_orders
-- LIMIT 10;

-- 3. Select important columns
/*
SELECT
    OrderID,
    CustomerID,
    Product,
    Quantity,
    TotalPrice
FROM ecommerce_orders;
*/

-- 4. Find unique products
/*
SELECT DISTINCT Product
FROM ecommerce_orders;
*/

-- 5. Find unique payment methods
/*
SELECT DISTINCT PaymentMethod
FROM ecommerce_orders;
*/

-- 6. Find unique order statuses
/*
SELECT DISTINCT OrderStatus
FROM ecommerce_orders;
*/

-- 7. Find unique referral sources
/*
SELECT DISTINCT ReferralSource
FROM ecommerce_orders;
*/

-- 8. Find unique coupon codes

SELECT DISTINCT CouponCode
FROM ecommerce_orders;


-- 9. Basic data inspection
/*
SELECT
    MIN(TotalPrice) AS minimum_order_value,
    MAX(TotalPrice) AS maximum_order_value,
    AVG(TotalPrice) AS average_order_value
FROM ecommerce_orders;
*/
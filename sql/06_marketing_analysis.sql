-- A. Payment Method Analysis
-- 1. Number of orders by payment method
/*
SELECT
    PaymentMethod,
    COUNT(*) AS total_orders
FROM ecommerce_orders
GROUP BY PaymentMethod
ORDER BY total_orders DESC;
*/

-- 2. Revenue by payment method
/*
SELECT
    PaymentMethod,
    SUM(TotalPrice) AS total_revenue
FROM ecommerce_orders
GROUP BY PaymentMethod
ORDER BY total_revenue DESC;
*/

-- 3. Comprehensive payment analysis
/*
SELECT
    PaymentMethod,
    COUNT(*) AS total_orders,
    SUM(TotalPrice) AS total_revenue,
    AVG(TotalPrice) AS average_order_value
FROM ecommerce_orders
GROUP BY PaymentMethod
ORDER BY total_revenue DESC;
*/

-- B. Order Status Analysis
-- 4. Orders by status
/*
SELECT
    OrderStatus,
    COUNT(*) AS total_orders
FROM ecommerce_orders
GROUP BY OrderStatus
ORDER BY total_orders DESC;
*/

-- 5. Revenue by order status
/*
SELECT
    OrderStatus,
    SUM(TotalPrice) AS total_revenue
FROM ecommerce_orders
GROUP BY OrderStatus
ORDER BY total_revenue DESC;
*/

-- C. Referral Source Analysis
-- 6. Orders by referral source
/*
SELECT
    ReferralSource,
    COUNT(*) AS total_orders
FROM ecommerce_orders
GROUP BY ReferralSource
ORDER BY total_orders DESC;
*/

-- 7. Revenue by referral source
/*
SELECT
    ReferralSource,
    SUM(TotalPrice) AS total_revenue
FROM ecommerce_orders
GROUP BY ReferralSource
ORDER BY total_revenue DESC;
*/

-- 8. Comprehensive referral analysis
/*
SELECT
    ReferralSource,
    COUNT(*) AS total_orders,
    SUM(TotalPrice) AS total_revenue,
    AVG(TotalPrice) AS average_order_value
FROM ecommerce_orders
GROUP BY ReferralSource
ORDER BY total_revenue DESC;
*/

-- D. Coupon Analysis
-- 9. Coupon usage
/*
SELECT
    CouponCode,
    COUNT(*) AS total_orders
FROM ecommerce_orders
GROUP BY CouponCode
ORDER BY total_orders DESC;
*/

-- 10. Revenue by coupon

SELECT
    CouponCode,
    SUM(TotalPrice) AS total_revenue
FROM ecommerce_orders
GROUP BY CouponCode
ORDER BY total_revenue DESC;
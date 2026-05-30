/*
============================================================
Wholesale Revenue Analysis — Motorcycle Parts Company
============================================================

Context:
You are working with a motorcycle parts retailer operating
three warehouses (North, Central, West), serving both
Retail and Wholesale clients.

The board of directors has requested an analysis of
WHOLESALE NET REVENUE:
- broken down by product line
- grouped by month
- grouped by warehouse

Net revenue accounts for payment method fees.

Environment:
- SQL dialect: PostgreSQL / Oracle-compatible
- Date range: June–August 2021
============================================================
*/


-- --------------------------------------------------
-- DATA OVERVIEW
--
-- Table: sales
-- Key columns:
-- - date           : order date
-- - warehouse      : North, Central, West
-- - client_type    : Retail or Wholesale
-- - product_line   : category of motorcycle parts
-- - total          : order total in USD
-- - payment_fee    : percentage-based transaction fee
-- --------------------------------------------------


-- --------------------------------------------------
-- EXPLORATORY DATA CHECKS
-- --------------------------------------------------

-- Determine available date range
SELECT
    MAX(date) AS date_max,
    MIN(date) AS date_min
FROM sales;

-- Expected range:
-- date_min = 2021-06-01
-- date_max = 2021-08-28


-- Preview month extraction logic
SELECT
    date,
    TO_CHAR(date, 'Month') AS month
FROM sales;


-- --------------------------------------------------
-- WHOLESALE FILTER VALIDATION
-- --------------------------------------------------

-- Confirm Wholesale records by product line and warehouse
SELECT
    product_line,
    TO_CHAR(date, 'Month') AS month,
    warehouse,
    client_type
FROM sales
WHERE client_type = 'Wholesale';


-- --------------------------------------------------
-- NET REVENUE LOGIC
--
-- Net revenue definition:
--   net_revenue = total - payment_fee
--
-- (Payment fee already stored as monetary value)
-- --------------------------------------------------


-- Net revenue by client type (sanity check)
SELECT
    client_type,
    SUM(total) - SUM(payment_fee) AS net_revenue
FROM sales
GROUP BY client_type;


-- Net revenue by product line and warehouse (all clients)
SELECT
    client_type,
    product_line,
    warehouse,
    SUM(total) - SUM(payment_fee) AS net_revenue
FROM sales
GROUP BY
    client_type,
    product_line,
    warehouse;


-- --------------------------------------------------
-- WHOLESALE NET REVENUE BY PRODUCT, MONTH, WAREHOUSE
-- --------------------------------------------------

-- Intermediate step including client_type
SELECT
    client_type,
    product_line,
    TO_CHAR(date, 'Month') AS month,
    warehouse,
    SUM(total) - SUM(payment_fee) AS net_revenue
FROM sales
WHERE client_type = 'Wholesale'
GROUP BY
    client_type,
    product_line,
    month,
    warehouse
ORDER BY
    product_line,
    month,
    net_revenue;


-- --------------------------------------------------
-- FINAL QUERY (BOARD-READY OUTPUT)
--
-- Columns:
-- - product_line
-- - month
-- - warehouse
-- - net_revenue
-- --------------------------------------------------

SELECT
    product_line,
    TO_CHAR(date, 'Month') AS month,
    warehouse,
    SUM(total) - SUM(payment_fee) AS net_revenue
FROM sales
WHERE client_type = 'Wholesale'
GROUP BY
    product_line,
    month,
    warehouse
ORDER BY
    product_line,
    month,
    net_revenue;
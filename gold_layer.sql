
CREATE SCHEMA gold;

-- 1. KPIs
CREATE VIEW gold.vw_kpis AS
SELECT
    SUM(total_amount) AS total_sales,
    COUNT(DISTINCT id) AS total_orders,
    SUM(quantity) AS total_items_sold
FROM silver.sales;

-- 2. Revenue by Year
CREATE VIEW gold.vw_revenue_by_year AS
SELECT
    year,
    SUM(total_amount) AS total_revenue
FROM silver.sales
GROUP BY year;

-- 3. Monthly Revenue
CREATE VIEW gold.vw_monthly_revenue AS
SELECT
    year,
    month,
    SUM(total_amount) AS total_revenue
FROM silver.sales
GROUP BY year, month;

-- 4. Payment Distribution
CREATE VIEW gold.vw_payment_distribution AS
SELECT
    payment_method,
    SUM(total_amount) AS total_revenue
FROM silver.sales
GROUP BY payment_method;

-- 5. Top Customers
CREATE VIEW gold.vw_top_customers AS
SELECT TOP 10
    customer_id,
    SUM(total_amount) AS total_spent
FROM silver.sales
GROUP BY customer_id
ORDER BY total_spent DESC;

-- 6. Store Performance
CREATE VIEW gold.vw_store_performance AS
SELECT
    store,
    SUM(total_amount) AS total_revenue
FROM silver.sales
GROUP BY store;

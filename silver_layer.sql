CREATE SCHEMA silver;


CREATE TABLE silver.sales (
    id INT,
    timestamp DATETIME,
    quantity INT,
    product_id VARCHAR(50),
    product_name VARCHAR(100),
    unit_price DECIMAL(10,2),
    total_amount DECIMAL(12,2),
    store VARCHAR(100),
    payment_method VARCHAR(50),
    customer_id VARCHAR(50),
    customer_type VARCHAR(50),
    year INT,
    month INT,
    day INT,
    day_name VARCHAR(20),
    hour INT
);
SELECT * FROM silver.sales
INSERT INTO silver.sales
SELECT
    TRY_CAST(id AS INT) AS id,
    TRY_CAST(timestamp AS DATETIME) AS timestamp,
    TRY_CAST(quantity AS INT) AS quantity,
    UPPER(TRIM(product_id)) AS product_id,
    UPPER(TRIM(product_name)) AS product_name,
    TRY_CAST(unit_price AS DECIMAL(10,2)) AS unit_price,
    TRY_CAST(quantity AS INT) * TRY_CAST(unit_price AS DECIMAL(10,2)) AS total_amount,
    UPPER(TRIM(store)) AS store,
    UPPER(TRIM(payment_method)) AS payment_method,
    UPPER(TRIM(customer_id)) AS customer_id,
    UPPER(TRIM(customer_type)) AS customer_type,
    YEAR(TRY_CAST(timestamp AS DATETIME)) AS year,
    MONTH(TRY_CAST(timestamp AS DATETIME)) AS month,
    DAY(TRY_CAST(timestamp AS DATETIME)) AS day,

    DATENAME(WEEKDAY, TRY_CAST(timestamp AS DATETIME)) AS day_name,
    DATEPART(HOUR, TRY_CAST(timestamp AS DATETIME)) AS hour

FROM (
    SELECT *,
        ROW_NUMBER() OVER (
            PARTITION BY id, customer_id, product_id, timestamp
            ORDER BY id
        ) AS rn
    FROM bronze.sales
) t

WHERE 
    rn = 1  
    AND id IS NOT NULL
    AND customer_id IS NOT NULL
    AND product_id IS NOT NULL
    AND timestamp IS NOT NULL
    AND TRY_CAST(quantity AS INT) > 0
    AND TRY_CAST(unit_price AS DECIMAL(10,2)) > 0;